USING AxUnit;
USING TankValveLib;

NAMESPACE Mytest_Tank

    {TestFixture}
    CLASS Tank_Test_Class
        VAR PRIVATE
            t : Tank; 
            vin:Valve; 
            vout:Valve;                  
            _outPutSignalIn : BOOL;
            _outPutSignalOut : BOOL; 
        END_VAR
        
        {Test}
        METHOD PUBLIC Test_FillingMethod_Expect_vin_Open_vout_Closed
            t.Init(vin,vout);
            t.Filling();            
            vin.WriteCyclic(outPutSignal => _outPutSignalIn);
            vout.WriteCyclic(outPutSignal => _outPutSignalOut);
            AxUnit.Assert.Equal(actual := _outPutSignalIn, expected := TRUE);
            AxUnit.Assert.Equal(actual := _outPutSignalOut, expected := FALSE);
            ;
        END_METHOD
        
        {Test}
        METHOD PUBLIC Test_FlushingMethod_Expect_vin_Open_vout_Open
            t.Init(vin,vout);
            t.Flushing();           
            vin.WriteCyclic(outPutSignal => _outPutSignalIn);
            vout.WriteCyclic(outPutSignal => _outPutSignalOut);
            AxUnit.Assert.Equal(actual := _outPutSignalIn, expected := TRUE);
            AxUnit.Assert.Equal(actual := _outPutSignalOut, expected := TRUE);
            ;            
        END_METHOD
        
        {Test}
        METHOD PUBLIC Test_CloseMethod_Expect_vin_Closed_vout_Closed
            t.Init(vin,vout);
            t.Close();            
            vin.WriteCyclic(outPutSignal => _outPutSignalIn);
            vout.WriteCyclic(outPutSignal => _outPutSignalOut);
            AxUnit.Assert.Equal(actual := _outPutSignalIn, expected := FALSE);
            AxUnit.Assert.Equal(actual := _outPutSignalOut, expected := FALSE);
            ;            
        END_METHOD

        {Test}
        METHOD PUBLIC Test_FeedingMethod_Expect_vin_Closed_vout_Open
            t.Init(vin,vout);
            t.Feeding();            
            vin.WriteCyclic(outPutSignal => _outPutSignalIn);
            vout.WriteCyclic(outPutSignal => _outPutSignalOut);
            AxUnit.Assert.Equal(actual := _outPutSignalIn, expected := FALSE);
            AxUnit.Assert.Equal(actual := _outPutSignalOut, expected := TRUE);
            ;            
        END_METHOD
        
    END_CLASS

END_NAMESPACE
