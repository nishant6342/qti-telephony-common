.class public abstract Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;
.super Landroid/os/HwBinder;
.source "IQtiRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 795
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 798
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

    .line 818
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 862
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 863
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 864
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 865
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 866
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

    .line 830
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
        0x6ft
        0x45t
        0x3t
        0x6at
        0x11t
        0x7t
        -0x75t
        0x38t
        0x2dt
        -0x7ct
        -0x2dt
        0x62t
        0x17t
        -0x3at
        0x39t
        -0x38t
        -0x3dt
        0x41t
        0x5at
        0x5ft
        -0x61t
        -0x7at
        0x33t
        0x2at
        0x7at
        0x62t
        0x58t
        -0x5et
        -0x74t
        -0x21t
        0x76t
        -0x22t
    .end array-data

    :array_1
    .array-data 1
        -0x80t
        -0x31t
        0x43t
        0x7ct
        0x4ct
        0x49t
        0x49t
        -0x6ft
        -0x65t
        0x55t
        -0x79t
        -0x32t
        0x7at
        0x22t
        0x6et
        -0x2t
        -0x80t
        0x8t
        -0x1t
        0x3t
        -0x5dt
        0x16t
        0x15t
        -0x71t
        0x5ft
        -0x1bt
        -0x6dt
        0x3ct
        -0x7ct
        0x48t
        0x2ft
        -0x17t
    .end array-data

    :array_2
    .array-data 1
        0x65t
        -0x6et
        -0xct
        -0x40t
        -0x22t
        -0x5et
        0x20t
        0x4ft
        0x49t
        -0x62t
        0x29t
        -0x1et
        0x40t
        0x67t
        -0x6ft
        -0x77t
        -0x55t
        -0x1bt
        0x49t
        0x1at
        0x71t
        0x73t
        -0x2dt
        0x6bt
        -0xbt
        -0x76t
        -0x6at
        -0x4ct
        0x5bt
        -0x5et
        -0x7dt
        -0x6bt
    .end array-data

    :array_3
    .array-data 1
        -0x1dt
        0x14t
        -0x50t
        0x17t
        0x5dt
        -0x5ft
        -0x22t
        0x0t
        0x59t
        -0x32t
        -0x17t
        -0x48t
        0x27t
        -0x59t
        0x57t
        -0x49t
        0x7dt
        -0x4bt
        -0x66t
        0x18t
        0x8t
        -0x7ct
        0x2bt
        -0x7dt
        0x1dt
        0x6ft
        0xdt
        -0x2t
        0x6ct
        -0x1bt
        -0x6t
        -0x4at
    .end array-data

    :array_4
    .array-data 1
        -0x23t
        -0x74t
        0x48t
        0x32t
        0xbt
        -0x71t
        0x3et
        -0x46t
        -0x6et
        0x19t
        0x5bt
        0x69t
        0x23t
        0x2t
        0x29t
        -0x33t
        0x54t
        0x13t
        -0x68t
        0x32t
        0x2ct
        0x18t
        -0x6t
        -0x2dt
        -0x17t
        0x70t
        0x41t
        -0x4ct
        -0x2ct
        0x1et
        -0x26t
        -0x23t
    .end array-data

    :array_5
    .array-data 1
        -0x75t
        0x66t
        0x67t
        -0xbt
        0x50t
        -0x77t
        0x26t
        -0x56t
        0x21t
        -0x3at
        0x8t
        0x6ct
        -0x1bt
        -0x7dt
        0x2ft
        -0x2bt
        0x29t
        0x1ct
        0x1ft
        0xft
        0x7t
        -0x6ct
        0x5at
        0x66t
        -0x4et
        -0x41t
        0x67t
        0x74t
        0x5t
        0x31t
        -0x6bt
        -0x5t
    .end array-data

    :array_6
    .array-data 1
        -0x28t
        -0x5ft
        -0x52t
        0x7t
        0x36t
        0x6dt
        -0x64t
        0x14t
        0xet
        -0xat
        -0x10t
        -0x3et
        0x4at
        -0x46t
        0x46t
        -0x2at
        -0x1ct
        -0x38t
        0x44t
        -0x2ct
        0x34t
        -0x3ct
        0x20t
        0x1at
        -0x1dt
        -0x39t
        0x43t
        0x42t
        -0x35t
        0x79t
        -0x71t
        -0x62t
    .end array-data

    :array_7
    .array-data 1
        0x68t
        0x5t
        0x77t
        -0x60t
        0x61t
        0x54t
        -0x71t
        0x1dt
        -0x79t
        0x55t
        -0x39t
        -0x4t
        0x52t
        -0x51t
        0x52t
        0x62t
        0x38t
        0x28t
        0x7ct
        -0x61t
        0x18t
        0x27t
        -0x4ft
        0x20t
        0x10t
        -0x64t
        -0x9t
        0xft
        -0x43t
        -0x3bt
        0x6dt
        -0x24t
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

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.qtiradio@2.6::IQtiRadio"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@2.5::IQtiRadio"

    const-string v3, "vendor.qti.hardware.radio.qtiradio@2.4::IQtiRadio"

    const-string v4, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadio"

    const-string v5, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadio"

    const-string v6, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadio"

    const-string v7, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadio"

    const-string v8, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadio"

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

    .line 824
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.6::IQtiRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 850
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 872
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 874
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

    .line 902
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.5::IQtiRadio"

    const-string v1, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadio"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadio"

    const-string v3, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadio"

    const-string v4, "android.hidl.base@1.0::IBase"

    const-string v5, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadio"

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1227
    :sswitch_0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->notifySyspropsChanged()V

    .line 1230
    goto/16 :goto_1

    .line 1216
    :sswitch_1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1219
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1220
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1221
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1222
    goto/16 :goto_1

    .line 1206
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->ping()V

    .line 1209
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1210
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1211
    goto/16 :goto_1

    .line 1201
    :sswitch_3
    goto/16 :goto_1

    .line 1193
    :sswitch_4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->setHALInstrumentation()V

    .line 1196
    goto/16 :goto_1

    .line 1159
    :sswitch_5
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1162
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1164
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1166
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1167
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1168
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1169
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1170
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1172
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1173
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1175
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1179
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1180
    nop

    .line 1170
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1176
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1183
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1185
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1187
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1188
    goto/16 :goto_1

    .line 1148
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1152
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1154
    goto/16 :goto_1

    .line 1136
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1139
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1140
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1141
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto/16 :goto_1

    .line 1125
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1128
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1129
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1130
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1131
    goto/16 :goto_1

    .line 1116
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.6::IQtiRadio"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1119
    .local v0, "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->getQtiRadioCapability(I)V

    .line 1120
    goto/16 :goto_1

    .line 1107
    .end local v0    # "serial":I
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1110
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->queryNrConfig(I)V

    .line 1111
    goto/16 :goto_1

    .line 1097
    .end local v0    # "serial":I
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1100
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1101
    .local v1, "config":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->setNrConfig(II)V

    .line 1102
    goto/16 :goto_1

    .line 1086
    .end local v0    # "serial":I
    .end local v1    # "config":I
    :sswitch_c
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.4::IQtiRadio"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1089
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;-><init>()V

    .line 1090
    .local v1, "imsiEncryptionInfo":Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1091
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->setCarrierInfoForImsiEncryption(ILvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;)V

    .line 1092
    goto/16 :goto_1

    .line 1073
    .end local v0    # "serial":I
    .end local v1    # "imsiEncryptionInfo":Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;
    :sswitch_d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1077
    .local v1, "def":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, "_hidl_out_val":Ljava/lang/String;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1079
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1081
    goto/16 :goto_1

    .line 1060
    .end local v0    # "prop":Ljava/lang/String;
    .end local v1    # "def":Ljava/lang/String;
    .end local v2    # "_hidl_out_val":Ljava/lang/String;
    :sswitch_e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1063
    .restart local v0    # "prop":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1064
    .local v1, "def":Z
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v2

    .line 1065
    .local v2, "_hidl_out_val":Z
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1066
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1068
    goto/16 :goto_1

    .line 1047
    .end local v0    # "prop":Ljava/lang/String;
    .end local v1    # "def":Z
    .end local v2    # "_hidl_out_val":Z
    :sswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1050
    .restart local v0    # "prop":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1051
    .local v1, "def":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v2

    .line 1052
    .local v2, "_hidl_out_val":I
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1053
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1055
    goto/16 :goto_1

    .line 1038
    .end local v0    # "prop":Ljava/lang/String;
    .end local v1    # "def":I
    .end local v2    # "_hidl_out_val":I
    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1041
    .local v0, "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->queryEndcStatus(I)V

    .line 1042
    goto/16 :goto_1

    .line 1028
    .end local v0    # "serial":I
    :sswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1031
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1032
    .local v1, "enable":Z
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->enableEndc(IZ)V

    .line 1033
    goto/16 :goto_1

    .line 1019
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_12
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadio"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1022
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->queryNrIconType(I)V

    .line 1023
    goto/16 :goto_1

    .line 1010
    .end local v0    # "serial":I
    :sswitch_13
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1013
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->query5gConfigInfo(I)V

    .line 1014
    goto/16 :goto_1

    .line 1001
    .end local v0    # "serial":I
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1004
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->queryUpperLayerIndInfo(I)V

    .line 1005
    goto/16 :goto_1

    .line 989
    .end local v0    # "serial":I
    :sswitch_15
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 992
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 993
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 994
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 995
    .local v2, "expectMore":Z
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;Z)V

    .line 996
    goto/16 :goto_1

    .line 980
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .end local v2    # "expectMore":Z
    :sswitch_16
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 983
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->queryNrSignalStrength(I)V

    .line 984
    goto :goto_1

    .line 971
    .end local v0    # "serial":I
    :sswitch_17
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 974
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->queryNrBearerAllocation(I)V

    .line 975
    goto :goto_1

    .line 962
    .end local v0    # "serial":I
    :sswitch_18
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 965
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->queryNrDcParam(I)V

    .line 966
    goto :goto_1

    .line 953
    .end local v0    # "serial":I
    :sswitch_19
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 956
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->query5gStatus(I)V

    .line 957
    goto :goto_1

    .line 944
    .end local v0    # "serial":I
    :sswitch_1a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 947
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->enable5gOnly(I)V

    .line 948
    goto :goto_1

    .line 935
    .end local v0    # "serial":I
    :sswitch_1b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 938
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->disable5g(I)V

    .line 939
    goto :goto_1

    .line 926
    .end local v0    # "serial":I
    :sswitch_1c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 929
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->enable5g(I)V

    .line 930
    goto :goto_1

    .line 917
    .end local v0    # "serial":I
    :sswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 920
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->getAtr(I)V

    .line 921
    goto :goto_1

    .line 905
    .end local v0    # "serial":I
    :sswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;

    move-result-object v0

    .line 908
    .local v0, "responseCallback":Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;

    move-result-object v1

    .line 909
    .local v1, "indicationCallback":Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;)V

    .line 910
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 912
    nop

    .line 1239
    .end local v0    # "responseCallback":Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;
    .end local v1    # "indicationCallback":Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_1b
        0x5 -> :sswitch_1a
        0x6 -> :sswitch_19
        0x7 -> :sswitch_18
        0x8 -> :sswitch_17
        0x9 -> :sswitch_16
        0xa -> :sswitch_15
        0xb -> :sswitch_14
        0xc -> :sswitch_13
        0xd -> :sswitch_12
        0xe -> :sswitch_11
        0xf -> :sswitch_10
        0x10 -> :sswitch_f
        0x11 -> :sswitch_e
        0x12 -> :sswitch_d
        0x13 -> :sswitch_c
        0x14 -> :sswitch_b
        0x15 -> :sswitch_a
        0x16 -> :sswitch_9
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

    .line 856
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 884
    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.6::IQtiRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    return-object p0

    .line 887
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

    .line 891
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 846
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 878
    const/4 v0, 0x1

    return v0
.end method
