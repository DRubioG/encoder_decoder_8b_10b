# encoder_decoder_8b_10b
 This is an encoder/decoder for 8b/10b

This project has at least two files, one for the encoder and other for the decoder

[encoder](encoder_8b_10b.vhd)

This module has an input and two output synchronized with the clock.
It is recomended to put a differential buffer for the positive output
to keep both differential pair outputs synchronized each other.

[decoder](decoder_8b_10b.vhd)

This module has two inputs and one output.
It is only necessary the positive differential input.

In this files the control K characters are not defined. Then, it is necessary 
to fork or merge the input/output signal with control K characters decryptor.