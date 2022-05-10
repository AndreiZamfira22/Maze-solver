module maze(output  reg out, input a, b, c);
     wire y;
     assign y = !a && b;
     assign out = (a && !b) || c + y;
endmodule