import plyplus

with open("riscv.g") as grm:
  parser = plyplus.Grammar(grm)
  parser.parse('''
               add x0, x0, x0
               add x0, x0, x0
               addi x0, x0, +100
               lw x0, 100(x0)
               lb x0, 0(x0)
               mul x0, x0, x0
               div x0, x0, x0
               sub x0, x0, x0
               sb x0, 0(x0)
               sw x0, 0(x0)
               jal x0, 0
               jalr x0, x0, 0
               ''')
