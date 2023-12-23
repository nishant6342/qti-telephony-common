.class public abstract Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IQtiRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 699
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 702
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

    .line 719
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 760
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 761
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 762
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 763
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 764
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 731
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    new-array v4, v1, [B

    fill-array-data v4, :array_2

    new-array v5, v1, [B

    fill-array-data v5, :array_3

    new-array v6, v1, [B

    fill-array-data v6, :array_4

    new-array v7, v1, [B

    fill-array-data v7, :array_5

    filled-new-array/range {v2 .. v7}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        0x2dt
        0x70t
        0x15t
        0x5at
        0x4at
        0x2dt
        0x1t
        -0x54t
        -0x44t
        -0x71t
        0x2t
        0x61t
        0x67t
        -0x53t
        -0x6t
        0x14t
        0x73t
        -0x6ct
        0x47t
        -0x2dt
        0x67t
        -0x5ft
        0x19t
        0x40t
        0x0t
        0x53t
        0x38t
        -0xft
        0x36t
        0x72t
        -0x77t
        -0x57t
    .end array-data

    :array_1
    .array-data 1
        -0xct
        -0xdt
        0x79t
        -0x32t
        0x4t
        -0x57t
        0x34t
        0x7bt
        -0x6ct
        0x30t
        0x57t
        -0x4ct
        -0x37t
        0x3ct
        -0x10t
        0x59t
        -0x2t
        0x4et
        0x35t
        0xct
        -0x5at
        -0x2t
        -0x7et
        -0x57t
        0x67t
        0xet
        0x19t
        -0xet
        0x11t
        -0x59t
        0x58t
        -0x33t
    .end array-data

    :array_2
    .array-data 1
        0x22t
        -0x51t
        -0x1t
        -0x64t
        -0x12t
        0x65t
        0x5ct
        -0x21t
        -0x60t
        0x2et
        -0x3bt
        0x28t
        -0x21t
        -0x2bt
        -0x1at
        0x30t
        0x6ft
        0x7dt
        0x53t
        -0x41t
        0x6t
        0x61t
        -0x38t
        -0x30t
        0x64t
        0x30t
        -0x64t
        0x5et
        0x2bt
        0x43t
        0x4t
        -0x5dt
    .end array-data

    :array_3
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

    :array_4
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

    :array_5
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 707
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioResponse"

    const-string v5, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 725
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 748
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 770
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 772
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

    .line 800
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadioResponse"

    const-string v1, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadioResponse"

    const/4 v2, 0x0

    const-string v3, "android.hidl.base@1.0::IBase"

    const-string v4, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1074
    :sswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->notifySyspropsChanged()V

    .line 1077
    goto/16 :goto_1

    .line 1063
    :sswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1066
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1067
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1068
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1069
    goto/16 :goto_1

    .line 1053
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->ping()V

    .line 1056
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1057
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1058
    goto/16 :goto_1

    .line 1048
    :sswitch_3
    goto/16 :goto_1

    .line 1040
    :sswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->setHALInstrumentation()V

    .line 1043
    goto/16 :goto_1

    .line 1006
    :sswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1009
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1011
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1013
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1014
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1015
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1016
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1017
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1019
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1020
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1022
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1026
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1027
    nop

    .line 1017
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1023
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1030
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1032
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1034
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1035
    goto/16 :goto_1

    .line 995
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1001
    goto/16 :goto_1

    .line 983
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 986
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 987
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 988
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 990
    goto/16 :goto_1

    .line 972
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 975
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 976
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 978
    goto/16 :goto_1

    .line 961
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 964
    .local v0, "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 965
    .local v1, "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 966
    .local v2, "endcStatus":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onEndcStatusResponse(III)V

    .line 967
    goto/16 :goto_1

    .line 950
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "endcStatus":I
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 953
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 954
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 955
    .local v2, "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onEnableEndcResponse(III)V

    .line 956
    goto/16 :goto_1

    .line 939
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_b
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 942
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 943
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 944
    .local v2, "iconType":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onNrIconTypeResponse(III)V

    .line 945
    goto/16 :goto_1

    .line 928
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "iconType":I
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 931
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 932
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 933
    .local v2, "config":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->on5gConfigInfoResponse(III)V

    .line 934
    goto/16 :goto_1

    .line 917
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":I
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 920
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 921
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 922
    .local v2, "bearerStatus":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onNrBearerAllocationResponse_2_1(III)V

    .line 923
    goto/16 :goto_1

    .line 905
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "bearerStatus":I
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 908
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 909
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;-><init>()V

    .line 910
    .local v2, "uliInfo":Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 911
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onUpperLayerIndInfoResponse(IILvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V

    .line 912
    goto/16 :goto_1

    .line 893
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "uliInfo":Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;
    :sswitch_f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    .line 896
    .local v0, "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 897
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 898
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 899
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->sendCdmaSmsResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 900
    goto/16 :goto_1

    .line 881
    .end local v0    # "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_10
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 884
    .local v0, "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 885
    .local v1, "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;-><init>()V

    .line 886
    .local v2, "signalStrength":Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 887
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onSignalStrengthResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V

    .line 888
    goto/16 :goto_1

    .line 870
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "signalStrength":Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;
    :sswitch_11
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 873
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 874
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 875
    .local v2, "bearerStatus":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onNrBearerAllocationResponse(III)V

    .line 876
    goto/16 :goto_1

    .line 858
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "bearerStatus":I
    :sswitch_12
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 861
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 862
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;-><init>()V

    .line 863
    .local v2, "dcParam":Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->readFromParcel(Landroid/os/HwParcel;)V

    .line 864
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onNrDcParamResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V

    .line 865
    goto :goto_1

    .line 847
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "dcParam":Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;
    :sswitch_13
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 850
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 851
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 852
    .local v2, "enabled":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->on5gStatusResponse(III)V

    .line 853
    goto :goto_1

    .line 836
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "enabled":I
    :sswitch_14
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 839
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 840
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 841
    .local v2, "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onEnable5gOnlyResponse(III)V

    .line 842
    goto :goto_1

    .line 825
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_15
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 828
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 829
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 830
    .restart local v2    # "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onDisable5gResponse(III)V

    .line 831
    goto :goto_1

    .line 814
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_16
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 817
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 818
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 819
    .restart local v2    # "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->onEnable5gResponse(III)V

    .line 820
    goto :goto_1

    .line 803
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_17
    const-string v0, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    .line 806
    .local v0, "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 807
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, "atr":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->getAtrResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Ljava/lang/String;)V

    .line 809
    nop

    .line 1086
    .end local v0    # "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .end local v1    # "atr":Ljava/lang/String;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_16
        0x3 -> :sswitch_15
        0x4 -> :sswitch_14
        0x5 -> :sswitch_13
        0x6 -> :sswitch_12
        0x7 -> :sswitch_11
        0x8 -> :sswitch_10
        0x9 -> :sswitch_f
        0xa -> :sswitch_e
        0xb -> :sswitch_d
        0xc -> :sswitch_c
        0xd -> :sswitch_b
        0xe -> :sswitch_a
        0xf -> :sswitch_9
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

    .line 754
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 782
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    return-object p0

    .line 785
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

    .line 789
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 744
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 776
    const/4 v0, 0x1

    return v0
.end method
