VERT

DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], COLOR

DCL TEMP[0]

DCL ADDR[0]

IMM FLT32 { 3.0, 1.0, 1.0, 1.0 }
IMM FLT32 { 1.0, 0.0, 0.0, 1.0 }
IMM FLT32 { 0.0, 1.0, 0.0, 1.0 }
IMM FLT32 { 0.0, 0.0, 1.0, 1.0 }
IMM FLT32 { 1.0, 1.0, 0.0, 1.0 }
IMM FLT32 { 0.0, 1.0, 1.0, 1.0 }

MOV OUT[0], IN[0]
MUL TEMP[0], IN[0], IMM[0]
ARR ADDR[0].x, TEMP[0]
MOV OUT[1], IMM[ADDR[0].x + 3]

END
