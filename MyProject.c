void main() {

       TRISB = 0b00000000;
       PORTB = 0B00000000;
       
       while(1){
                RB1_bit = 1;
                delay_ms(1000);
                RB1_bit = 0;
                delay_ms(1000);
       }
       
}