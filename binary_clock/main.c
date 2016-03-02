/*
 * Interrupt_test.c
 *
 * Created: 2/29/2016 1:35:43 PM
 * Author : Andreas
 * Binary Clock
 * Uses timer interrupt to set correct leds
 * Register info can be found in manual page 131
 * Processor must be programmed to run at 1 MHz internal oscillator
 * TODO: Move function prototypes to header file
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>

// Function prototypes
void init_ports();
void init_timer();

int main(void)
{
	init_ports();
	init_timer();
 
	while (1)
    {
    }
	return 0;
}

void init_ports(void){
	// Set outputs
	DDRB |= 0x01;	// Pins on PORTB
	PORTB = 0x00; // Set initial value of output port
}

void init_timer(void){
	// Configure timer interrupt
	TIMSK |= (1 << OCIE1A); // Enable CTC interrupt
	TCNT1 = 0;	// Reset timer counter
	TCCR1B |= (1 << WGM12);	// Set to CTC mode on OCR1A
	TCCR1B |= (1 << CS10) | (1 << CS11);	// Set prescaler to 1/64
	OCR1A = 15624;			// Compare value of register
	sei(); // Enable global interrupts
}

ISR(TIMER1_COMPA_vect){
	PORTB ^= 0x01;
}
	
