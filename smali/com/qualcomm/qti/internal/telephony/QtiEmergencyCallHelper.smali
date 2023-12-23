.class public Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;
.super Ljava/lang/Object;
.source "QtiEmergencyCallHelper.java"


# static fields
.field private static final ALLOW_ECALL_ENHANCEMENT_PROPERTY:Ljava/lang/String; = "persist.vendor.radio.enhance_ecall"

.field private static final INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiEmergencyCallHelper"

.field private static final PRIMARY_STACK_MODEMID:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneIdForECall(Landroid/content/Context;)I
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    move-object/from16 v0, p0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    .line 57
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    .line 56
    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getPhoneId(Landroid/content/Context;I)I

    move-result v1

    .line 58
    .local v1, "voicePhoneId":I
    const/4 v2, -0x1

    .line 60
    .local v2, "phoneId":I
    nop

    .line 61
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 62
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 64
    .local v4, "phoneCount":I
    invoke-static/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v8, "QtiEmergencyCallHelper"

    if-nez v5, :cond_6

    .line 69
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isDsdaOrDsdsTransitionMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    array-length v9, v5

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_3

    aget-object v11, v5, v10

    .line 71
    .local v11, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_2

    .line 72
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 73
    .local v12, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-nez v12, :cond_0

    .line 74
    const-string v13, "ImsPhone should not be null"

    invoke-static {v8, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_1

    .line 78
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    return v5

    .line 80
    :cond_1
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_2

    if-ne v2, v7, :cond_2

    .line 82
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 70
    .end local v11    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v12    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 86
    :cond_3
    if-eq v2, v7, :cond_4

    .line 87
    return v2

    .line 93
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    array-length v9, v5

    move v10, v6

    :goto_2
    if-ge v10, v9, :cond_6

    aget-object v11, v5, v10

    .line 94
    .restart local v11    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_5

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call already active on phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    return v5

    .line 93
    .end local v11    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 107
    :cond_6
    nop

    .line 108
    const-string v5, "carrier_config"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 109
    .local v5, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v9, 0x5

    if-eqz v5, :cond_a

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isPrivateNetworkSimInserted(Landroid/telephony/CarrierConfigManager;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 110
    const/4 v11, -0x1

    .line 111
    .local v11, "privateId":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v12

    array-length v13, v12

    :goto_3
    if-ge v6, v13, :cond_9

    aget-object v14, v12, v6

    .line 112
    .local v14, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    .line 113
    .local v15, "phId":I
    invoke-static {v5, v14}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isPrivateNetwork(Landroid/telephony/CarrierConfigManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 115
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v7

    .line 117
    .local v7, "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    invoke-virtual {v3, v15}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    if-ne v10, v9, :cond_8

    .line 119
    invoke-virtual {v7, v15}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v10

    const/4 v9, 0x1

    if-ne v10, v9, :cond_8

    .line 121
    const-string v6, "public network sim is ready/PROVISIONED"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v15

    .line 124
    .end local v7    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    :cond_7
    const/4 v7, -0x1

    if-ne v11, v7, :cond_8

    .line 125
    move v7, v15

    move v11, v7

    .end local v11    # "privateId":I
    .local v7, "privateId":I
    goto :goto_4

    .line 124
    .end local v7    # "privateId":I
    .restart local v11    # "privateId":I
    :cond_8
    nop

    .line 111
    .end local v14    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v15    # "phId":I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x5

    goto :goto_3

    .line 129
    :cond_9
    const/4 v6, -0x1

    if-eq v11, v6, :cond_a

    .line 130
    return v11

    .line 134
    .end local v11    # "privateId":I
    :cond_a
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    .line 135
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    .line 134
    invoke-static {v0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getPhoneId(Landroid/content/Context;I)I

    move-result v6

    .line 136
    .local v6, "ddsPhoneId":I
    const/4 v7, 0x0

    .line 137
    .local v7, "hasUserSetDefaultVoiceSub":Z
    const/4 v9, 0x0

    .line 138
    .local v9, "hasUserSetDefaultDataSub":Z
    const/4 v10, 0x0

    .local v10, "phId":I
    :goto_5
    const-string v11, "In Sms Callback Mode on phoneId: "

    if-ge v10, v4, :cond_e

    .line 139
    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 140
    .local v12, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 141
    .local v13, "ss":I
    if-nez v13, :cond_d

    .line 144
    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isInScbm(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 145
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v10

    .line 148
    :cond_b
    move v2, v10

    .line 151
    const/4 v11, -0x1

    if-eq v1, v11, :cond_c

    .line 152
    if-ne v2, v1, :cond_d

    const/4 v7, 0x1

    goto :goto_6

    .line 154
    :cond_c
    if-ne v2, v6, :cond_d

    const/4 v9, 0x1

    .line 138
    .end local v12    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v13    # "ss":I
    :cond_d
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 160
    .end local v10    # "phId":I
    :cond_e
    if-eqz v7, :cond_f

    .line 161
    move v2, v1

    goto :goto_7

    .line 162
    :cond_f
    if-eqz v9, :cond_10

    .line 163
    move v2, v6

    .line 165
    :cond_10
    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Voice phoneId in service = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v10, -0x1

    if-ne v2, v10, :cond_15

    .line 168
    const/4 v10, 0x0

    .restart local v10    # "phId":I
    :goto_8
    if-ge v10, v4, :cond_13

    .line 169
    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    .line 170
    .local v13, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    .line 171
    .local v14, "ss":I
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 174
    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isInScbm(I)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 175
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v10

    .line 178
    :cond_11
    move v2, v10

    .line 179
    if-ne v2, v1, :cond_12

    const/4 v7, 0x1

    .line 168
    .end local v13    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v14    # "ss":I
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 184
    .end local v10    # "phId":I
    :cond_13
    if-eqz v7, :cond_14

    .line 185
    move v2, v1

    .line 187
    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Voice phoneId in Limited service = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_15
    const/4 v10, -0x1

    if-ne v2, v10, :cond_1a

    .line 191
    invoke-static/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId(Landroid/content/Context;)I

    move-result v2

    .line 192
    const/4 v10, 0x0

    .restart local v10    # "phId":I
    :goto_9
    if-ge v10, v4, :cond_19

    .line 193
    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    .line 195
    .restart local v13    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v14

    .line 197
    .local v14, "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    invoke-virtual {v3, v10}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v15

    const/4 v0, 0x5

    if-ne v15, v0, :cond_17

    .line 199
    invoke-virtual {v14, v10}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v15

    const/4 v0, 0x1

    if-ne v15, v0, :cond_18

    .line 203
    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isInScbm(I)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return v10

    .line 207
    :cond_16
    move v2, v10

    .line 208
    if-ne v2, v1, :cond_18

    const/4 v7, 0x1

    goto :goto_a

    .line 197
    :cond_17
    const/4 v0, 0x1

    .line 192
    .end local v13    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v14    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    :cond_18
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_9

    .line 213
    .end local v10    # "phId":I
    :cond_19
    if-eqz v7, :cond_1a

    .line 214
    move v2, v1

    .line 217
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " preferred phoneId = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " hasUserSetDefaultVoiceSub = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " hasUserSetDefaultDataSub = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v2
.end method

.method public static getPrimaryStackPhoneId(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "modemUuId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 233
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, -0x1

    .line 234
    .local v2, "primayStackPhoneId":I
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 235
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 237
    .local v3, "phoneCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-string v5, "QtiEmergencyCallHelper"

    if-ge v4, v3, :cond_3

    .line 239
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 240
    if-nez v1, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Logical Modem id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    goto :goto_1

    .line 251
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 252
    move v2, v4

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Primay Stack phone id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    goto :goto_2

    .line 237
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    .end local v4    # "i":I
    :cond_3
    :goto_2
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 260
    const-string v4, "Returning default phone id"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v2, 0x0

    .line 264
    :cond_4
    return v2
.end method

.method public static isDeviceInSingleStandby(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 268
    const-string v0, "persist.vendor.radio.enhance_ecall"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "QtiEmergencyCallHelper"

    if-nez v0, :cond_0

    .line 269
    const-string v0, "persist.vendor.radio.enhance_ecall not enabled"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v2

    .line 273
    :cond_0
    nop

    .line 274
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 275
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 279
    .local v4, "phoneCnt":I
    if-ne v4, v1, :cond_1

    .line 280
    return v1

    .line 282
    :cond_1
    const/4 v5, 0x0

    .local v5, "phoneId":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 284
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v6

    .line 286
    .local v6, "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 287
    invoke-virtual {v6, v5}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v7

    if-eq v7, v1, :cond_2

    goto :goto_1

    .line 282
    .end local v6    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 289
    .restart local v6    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    :cond_3
    :goto_1
    const-string v2, "modem is in single standby mode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v1

    .line 294
    .end local v5    # "phoneId":I
    .end local v6    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    :cond_4
    const-string v1, "modem is in dual standby mode"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v2
.end method

.method private static isInScbm(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 227
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isInScbm(I)Z

    move-result v0

    return v0
.end method

.method private static isPrivateNetwork(Landroid/telephony/CarrierConfigManager;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "configManager"    # Landroid/telephony/CarrierConfigManager;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 311
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 312
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    const-string v1, "is_private_network"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isPrivateNetworkSimInserted(Landroid/telephony/CarrierConfigManager;)Z
    .locals 6
    .param p0, "configManager"    # Landroid/telephony/CarrierConfigManager;

    .line 300
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 301
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isPrivateNetwork(Landroid/telephony/CarrierConfigManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 302
    const-string v0, "QtiEmergencyCallHelper"

    const-string v1, "Private network sim is inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x1

    return v0

    .line 300
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    :cond_1
    return v2
.end method
