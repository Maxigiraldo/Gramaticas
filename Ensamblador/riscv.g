start: program;

program: inst+;

inst: 
    instr  regname ',' regname ',' regname // R instruction
  | insti  regname ',' regname ',' IMM     // I instruction
  | instil regname ',' offset;
  | insts  regname ',' offset ',' regname
  | instb  regname ',' regname ',' IMM
  | instj  regname ',' IMM
  | instu  regname ',' IMM

offset: IMM '\(' regname '\)';

instname: instr | insti;

instr: 'add' | 'sub' | 'xor' | 'or' | 'and' | 'sll' | 'srl' | 'sra' | 'slt' | 'sltu' | 'mul' | 'div' | 'rem' | 'divu' | 'remu' | 'mulh' |  'mulsu' | 'mulu';
insti: 'addi' | 'xori' | 'ori'| 'andi' | 'slli' | 'srli' | 'srai' | 'slti' | 'sltiu' | 'jalr' | 'ecall' | 'ebreak';
instil: 'lw' | 'lh' | 'lb' | 'lbu' | 'lhu';
insts: 'sw' | 'sh' | 'sb';
instb: 'beq' | 'bne' | 'blt' | 'bge' | 'bltu' | 'bgeu';
instj: 'jal';
instu: 'lui' | 'auipc';

IMM: '[0]|(\-|\+)?[1-9][0-9]*';


regname: 
   'x0' | 'zero'
  | 'x1' | 'x2' | 'x3' | 'x4' | 'x5' | 'x6'| 'x7' | 'x8' | 'x9' | 'x10'
  | 'x11' | 'x12' | 'x13' | 'x14' | 'x15' | 'x16'| 'x17' | 'x18' | 'x19' | 'x20'
  | 'x21' | 'x22' | 'x23' | 'x24' | 'x25' | 'x26'| 'x27' | 'x28' | 'x29' | 'x30'
  | 'x31'
;

WS: '[ \t\r\n]+' (%ignore);
