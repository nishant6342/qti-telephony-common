.class public abstract Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IQtiRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 760
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 763
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

    .line 783
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 827
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 828
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 829
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 830
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 831
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 795
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

    new-array v8, v1, [B

    fill-array-data v8, :array_6

    new-array v9, v1, [B

    fill-array-data v9, :array_7

    new-array v10, v1, [B

    fill-array-data v10, :array_8

    filled-new-array/range {v2 .. v10}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x65t
        -0x7t
        -0x19t
        -0x76t
        -0x3et
        0x58t
        0x68t
        0x25t
        -0x9t
        0x2et
        0x5at
        0x16t
        -0x36t
        0x6dt
        0x16t
        -0x78t
        -0x76t
        0x74t
        -0x57t
        -0x18t
        -0x6t
        -0x8t
        0x54t
        0x78t
        -0x6bt
        0x73t
        -0x67t
        -0x3ft
        -0x7at
        0x75t
        0x66t
        -0x2ft
    .end array-data

    :array_1
    .array-data 1
        -0x34t
        0x4at
        0x5ft
        -0x3dt
        -0x27t
        0x1ct
        0x3ft
        -0x63t
        0x31t
        0x44t
        0x1dt
        0x45t
        -0x64t
        0x29t
        -0xbt
        0x40t
        -0x42t
        -0x63t
        0x70t
        0x2et
        -0x32t
        -0xft
        0xbt
        0x2bt
        0x3ft
        -0x5et
        0x77t
        -0x2t
        -0x26t
        0x0t
        -0x25t
        -0x30t
    .end array-data

    :array_2
    .array-data 1
        -0x29t
        0x75t
        0x76t
        0x55t
        -0x7dt
        -0x24t
        0x70t
        0x54t
        0x10t
        0x57t
        0x78t
        0x57t
        0x4et
        0x60t
        0x41t
        0x2at
        0x34t
        -0xct
        0x56t
        -0x4ft
        0x62t
        -0x16t
        -0x33t
        -0x7t
        -0x63t
        0x50t
        0x21t
        0x68t
        -0x78t
        0x1ct
        0x12t
        0x74t
    .end array-data

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.qtiradio@2.6::IQtiRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@2.5::IQtiRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.qtiradio@2.4::IQtiRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadioResponse"

    const-string v5, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadioResponse"

    const-string v6, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadioResponse"

    const-string v7, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioResponse"

    const-string v8, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    const-string v9, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 789
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.6::IQtiRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 815
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 837
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 839
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

    .line 867
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.5::IQtiRadioResponse"

    const-string v1, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadioResponse"

    const/4 v3, 0x0

    const-string v4, "android.hidl.base@1.0::IBase"

    const-string v5, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1184
    :sswitch_0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->notifySyspropsChanged()V

    .line 1187
    goto/16 :goto_1

    .line 1173
    :sswitch_1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1176
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1177
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1178
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1179
    goto/16 :goto_1

    .line 1163
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->ping()V

    .line 1166
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1168
    goto/16 :goto_1

    .line 1158
    :sswitch_3
    goto/16 :goto_1

    .line 1150
    :sswitch_4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->setHALInstrumentation()V

    .line 1153
    goto/16 :goto_1

    .line 1116
    :sswitch_5
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1119
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1121
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1123
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1124
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1125
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1126
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1127
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1129
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1130
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1132
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1136
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1137
    nop

    .line 1127
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1133
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1140
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1142
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1144
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1145
    goto/16 :goto_1

    .line 1105
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1109
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1111
    goto/16 :goto_1

    .line 1093
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1096
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1097
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1098
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1100
    goto/16 :goto_1

    .line 1082
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1085
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1086
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1087
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1088
    goto/16 :goto_1

    .line 1071
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.6::IQtiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1074
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1076
    .local v1, "raf":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->getQtiRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 1077
    goto/16 :goto_1

    .line 1060
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "raf":I
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1063
    .local v0, "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1064
    .local v1, "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1065
    .local v2, "config":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onNrConfigResponse(III)V

    .line 1066
    goto/16 :goto_1

    .line 1049
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":I
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1052
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1053
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1054
    .local v2, "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->setNrConfigResponse(III)V

    .line 1055
    goto/16 :goto_1

    .line 1039
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_c
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.4::IQtiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    .line 1042
    .local v0, "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1043
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)V

    .line 1044
    goto/16 :goto_1

    .line 1028
    .end local v0    # "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1031
    .local v0, "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1032
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1033
    .local v2, "endcStatus":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onEndcStatusResponse(III)V

    .line 1034
    goto/16 :goto_1

    .line 1017
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "endcStatus":I
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1020
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1021
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1022
    .local v2, "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onEnableEndcResponse(III)V

    .line 1023
    goto/16 :goto_1

    .line 1006
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_f
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1009
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1010
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1011
    .local v2, "iconType":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onNrIconTypeResponse(III)V

    .line 1012
    goto/16 :goto_1

    .line 995
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "iconType":I
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 998
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 999
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1000
    .local v2, "config":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->on5gConfigInfoResponse(III)V

    .line 1001
    goto/16 :goto_1

    .line 984
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":I
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 987
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 988
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 989
    .local v2, "bearerStatus":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onNrBearerAllocationResponse_2_1(III)V

    .line 990
    goto/16 :goto_1

    .line 972
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "bearerStatus":I
    :sswitch_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 975
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 976
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;-><init>()V

    .line 977
    .local v2, "uliInfo":Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 978
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onUpperLayerIndInfoResponse(IILvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V

    .line 979
    goto/16 :goto_1

    .line 960
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "uliInfo":Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;
    :sswitch_13
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    .line 963
    .local v0, "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 964
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 965
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 966
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->sendCdmaSmsResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 967
    goto/16 :goto_1

    .line 948
    .end local v0    # "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_14
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 951
    .local v0, "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 952
    .local v1, "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;-><init>()V

    .line 953
    .local v2, "signalStrength":Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 954
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onSignalStrengthResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V

    .line 955
    goto/16 :goto_1

    .line 937
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "signalStrength":Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;
    :sswitch_15
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 940
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 941
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 942
    .local v2, "bearerStatus":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onNrBearerAllocationResponse(III)V

    .line 943
    goto/16 :goto_1

    .line 925
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "bearerStatus":I
    :sswitch_16
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 928
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 929
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;-><init>()V

    .line 930
    .local v2, "dcParam":Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->readFromParcel(Landroid/os/HwParcel;)V

    .line 931
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onNrDcParamResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V

    .line 932
    goto :goto_1

    .line 914
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "dcParam":Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;
    :sswitch_17
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 917
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 918
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 919
    .local v2, "enabled":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->on5gStatusResponse(III)V

    .line 920
    goto :goto_1

    .line 903
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "enabled":I
    :sswitch_18
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 906
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 907
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 908
    .local v2, "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onEnable5gOnlyResponse(III)V

    .line 909
    goto :goto_1

    .line 892
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_19
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 895
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 896
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 897
    .restart local v2    # "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onDisable5gResponse(III)V

    .line 898
    goto :goto_1

    .line 881
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_1a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 884
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 885
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 886
    .restart local v2    # "status":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->onEnable5gResponse(III)V

    .line 887
    goto :goto_1

    .line 870
    .end local v0    # "serial":I
    .end local v1    # "errorCode":I
    .end local v2    # "status":I
    :sswitch_1b
    const-string v0, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    .line 873
    .local v0, "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 874
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "atr":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->getAtrResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Ljava/lang/String;)V

    .line 876
    nop

    .line 1196
    .end local v0    # "info":Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .end local v1    # "atr":Ljava/lang/String;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_19
        0x4 -> :sswitch_18
        0x5 -> :sswitch_17
        0x6 -> :sswitch_16
        0x7 -> :sswitch_15
        0x8 -> :sswitch_14
        0x9 -> :sswitch_13
        0xa -> :sswitch_12
        0xb -> :sswitch_11
        0xc -> :sswitch_10
        0xd -> :sswitch_f
        0xe -> :sswitch_e
        0xf -> :sswitch_d
        0x10 -> :sswitch_c
        0x11 -> :sswitch_b
        0x12 -> :sswitch_a
        0x13 -> :sswitch_9
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

    .line 821
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 849
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.6::IQtiRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    return-object p0

    .line 852
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

    .line 856
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 811
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 843
    const/4 v0, 0x1

    return v0
.end method
