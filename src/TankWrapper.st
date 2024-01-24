NAMESPACE TankValveLib
    ///包装器
    FUNCTION_BLOCK TankWrapper
        ///输入
        VAR_INPUT
        Fill:BOOL;
        Feed:BOOL;
        Flush:BOOL;
        Close:BOOL;
        END_VAR
        ///输出
        VAR_OUTPUT
        valveInState:BOOL;
        valveOutState:BOOL;
        END_VAR
        ///静态变量
        VAR
         tank:Tank;
         valveIn:Valve;
         valveOut:Valve; 
         initialized:BOOL;
        END_VAR
        ///初始化
        IF NOT initialized  THEN
            tank.Init(valveIn,valveOut);  
            initialized:=TRUE;          
        END_IF;
        ///执行进料/出料/冲洗/关闭
        IF initialized THEN
            IF Fill THEN
                tank.Filling();
            ELSIF Feed THEN
                tank.Feeding();
            ELSIF Flush THEN
                tank.Flushing();
            ELSIF Close THEN
                tank.Close();
            ELSE
                tank.Close();
            END_IF;

            ///阀门输出
            valveIn.WriteCyclic(valveInState);
            valveOut.WriteCyclic(valveOutState);
        END_IF;
        ;
    END_FUNCTION_BLOCK
END_NAMESPACE