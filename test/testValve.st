USING UserAsserts;
USING AxUnit;
USING TankLib;
NAMESPACE Mytest_Valve
    {TestFixture}
    CLASS Valve_Test_Class
        VAR 
            v : Valve;                    
            vout : BOOL;
        END_VAR
        
        {Test}
        METHOD PUBLIC Testvout_default_value_expect_false
            v.WriteCyclic(outPutSignal => vout);
            AxUnit.Assert.Equal(expected := FALSE, actual := vout);
        END_METHOD

        {Test}
        METHOD PUBLIC Test_ValveClose_default_value_expect_false
            v.Open();  
            v.Close();
            v.WriteCyclic(outPutSignal => vout);
            AxUnit.Assert.Equal(expected := FALSE, actual := vout);
        END_METHOD

        {Test}
        METHOD PUBLIC Test1
            VAR_TEMP
                result:BOOL;
            END_VAR
            
            v.Open();
            v.WriteCyclic(outPutSignal => result);
            AxUnit.Assert.Equal(expected := TRUE,actual := result);
        END_METHOD

        {Test}
        METHOD PUBLIC Test_GetStateOf_ClosedValve
            AxUnit.Assert.Equal(TRUE, Equal(ValveState#Closed,v.GetState()) );
        END_METHOD

        {Test}
        METHOD PUBLIC Test_GetStateOf_OpenedValve
            v.Open();
            AxUnit.Assert.Equal(TRUE, Equal(ValveState#Opened,v.GetState()) );
        END_METHOD
    
    END_CLASS
END_NAMESPACE 