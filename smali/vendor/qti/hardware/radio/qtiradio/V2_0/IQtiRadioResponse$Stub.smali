.class public abstract Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IQtiRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 664
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 667
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 681
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 719
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 720
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 721
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 722
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 723
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    filled-new-array {v2, v3, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x7ct
        0x6et
        0x55t
        -0x71t
        0x5ct
        0x77t
        0x69t
        0x65t
        0x21t
        0x31t
        -0x58t
        0x5et
        -0x44t
        0x4et
        0x58t
        -0x1t
        0x5at
        -0xbt
        -0x65t
        0x51t
        -0x19t
        -0x18t
        -0x70t
        -0x76t
        -0x59t
        -0x4ct
        0x3t
        0x64t
        0x75t
        -0x80t
        -0x7ft
        -0x67t
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0x61t
        -0x23t
        -0x66t
        -0x35t
        0x74t
        0x65t
        0x4dt
        -0x2bt
        0x20t
        0x3et
        -0x23t
        -0x6t
        -0x4dt
        -0x72t
        0x5bt
        -0x3et
        -0x29t
        -0x59t
        -0x52t
        0x64t
        0x78t
        -0x6ct
        0x54t
        0x1t
        -0xft
        0x47t
        -0x1bt
        0x6ft
        -0x7et
        0x74t
        -0x47t
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioResponse"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 687
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 707
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 729
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 731
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 966
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->notifySyspropsChanged()V

    .line 969
    goto/16 :goto_1

    .line 955
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 958
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 959
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 961
    goto/16 :goto_1

    .line 945
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->ping()V

    .line 948
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 950
    goto/16 :goto_1

    .line 940
    :sswitch_3
    goto/16 :goto_1

    .line 932
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->setHALInstrumentation()V

    .line 935
    goto/16 :goto_1

    .line 898
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 901
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 903
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 905
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 906
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 907
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 908
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 909
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 911
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 912
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 914
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 918
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 919
    nop

    .line 909
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 915
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 922
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 924
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 926
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 927
    goto/16 :goto_1

    .line 887
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 891
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 893
    goto/16 :goto_1

    .line 875
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 878
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 879
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 880
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 881
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 882
    goto/16 :goto_1

    .line 864
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 867
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 868
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 869
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 870
    goto/16 :goto_1

    .line 852
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    .line 855
    .local v0, "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 856
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 857
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 858
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->sendCdmaSmsResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 859
    goto/16 :goto_1

    .line 840
    .end local v0    # "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 843
    .local v0, "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 844
    .local v1, "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;-><init>()V

    .line 845
    .local v2, "signalStrength":Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 846
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->onSignalStrengthResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V

    .line 847
    goto/16 :goto_1

    .line 829
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "signalStrength":Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 832
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 833
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 834
    .local v2, "bearerStatus":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->onNrBearerAllocationResponse(III)V

    .line 835
    goto/16 :goto_1

    .line 817
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "bearerStatus":I
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 820
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 821
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;-><init>()V

    .line 822
    .local v2, "dcParam":Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->readFromParcel(Landroid/os/HwParcel;)V

    .line 823
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->onNrDcParamResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V

    .line 824
    goto :goto_1

    .line 806
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "dcParam":Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;
    :sswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 809
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 810
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 811
    .local v2, "enabled":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->on5gStatusResponse(III)V

    .line 812
    goto :goto_1

    .line 795
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "enabled":I
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 798
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 799
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 800
    .local v2, "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->onEnable5gOnlyResponse(III)V

    .line 801
    goto :goto_1

    .line 784
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 787
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 788
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 789
    .restart local v2    # "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->onDisable5gResponse(III)V

    .line 790
    goto :goto_1

    .line 773
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 776
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 777
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 778
    .restart local v2    # "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->onEnable5gResponse(III)V

    .line 779
    goto :goto_1

    .line 762
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_11
    const-string v0, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    .line 765
    .local v0, "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "atr":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->getAtrResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Ljava/lang/String;)V

    .line 768
    nop

    .line 978
    .end local v0    # "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .end local v1    # "atr":Ljava/lang/String;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_10
        0x3 -> :sswitch_f
        0x4 -> :sswitch_e
        0x5 -> :sswitch_d
        0x6 -> :sswitch_c
        0x7 -> :sswitch_b
        0x8 -> :sswitch_a
        0x9 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 713
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 741
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    return-object p0

    .line 744
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 703
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 735
    const/4 v0, 0x1

    return v0
.end method
