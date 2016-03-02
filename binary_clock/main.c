/*
 * Interrupt_test.c
 *
 * Created: 2/29/2016 1:35:43 PM
 * Author : Andreas
 * Binary Clock
 * Uses timer interrupt to set correct leds
 * Register info can be found in manual page 131
 * Processor must be programmed to run at 1 MHz internal oscillator
 * PD0 has PINT16 and PD1 has PCINT17
 * TODO: Move function prototypes to header file
 * TODO: Implement a sleep mode
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>

volatile long TIME = 0;
int minutes_single = 0;
int minutes_tens = 0;
int old_button = 0;

// Function prototypes
void init_ports();
void init_timer();
void init_pin_interrupt();
void update_minutes();


int main(void)
{
	init_ports();
	init_timer();
	init_pin_interrupt();
	sei(); // Enable global interrupts
 
	while (1)
    {
	}
	return 0;
}

void init_ports(void){
	// Set outputs
	DDRB |= 0x1f;	// Pins on PORTB
	DDRC |= 0x87;	// Pins on PORTC
	DDRD |= 0x00;	// Pins on PORTD
	PORTB = 0x1f; // Set initial value of output port B
	PORTC = 0x1f; // Set initial value of output port C
	PORTD = 0x01; // Enable pullup resistor
}

void init_timer(void){
	// Configure timer interrupt
	TIMSK1 |= (1 << OCIE1A); // Enable CTC interrupt
	TCNT1 = 0;	// Reset timer counter
	TCCR1B |= (1 << WGM12);	// Set to CTC mode on OCR1A
	TCCR1B |= (1 << CS10) | (1 << CS11);	// Set prescaler to 1/64
	OCR1A = 15624;			// Compare value of register
}

void init_pin_interrupt(void){
	PCICR |= (1 << PCIE2);		// Set interrupt detect 
	PCMSK2 |= (1 << PCINT16);	// Enable interrupt on PD0
}
ISR(TIMER1_COMPA_vect){
	++TIME;
	update_minutes();	
}

ISR(PCINT2_vect) {
	TIME += 4;
}

void update_minutes(void){
	minutes_single = (TIME%60)%10;
	// Check each bit in the single minutes
	// Minutes, single minutes
	(minutes_single & 0x01) ? (PORTB &= ~(1 << PB0)): (PORTB |= (1 << PB0)) ;
	(minutes_single & 0x02) ? (PORTB &= ~(1 << PB1)) : (PORTB |= (1 << PB1));
	(minutes_single & 0x04) ? (PORTB &= ~(1 << PB2)) : (PORTB |= (1 << PB2));
	(minutes_single & 0x08) ? (PORTB &= ~(1 << PB3)) : (PORTB |= (1 << PB3));
	// Minutes, tens of minutes
	minutes_tens = (TIME%60)/10;
	// Check each bit in tens of minutes
	// Minutes, least significant
	(minutes_tens & 0x01) ? (PORTC &= ~(1 << PC0)) : (PORTC |= (1 << PC0));
	(minutes_tens & 0x02) ? (PORTC &= ~(1 << PC1)) : (PORTC |= (1 << PC1));
	(minutes_tens & 0x04) ? (PORTC &= ~(1 << PC2)) : (PORTC |= (1 << PC2));
}

	
