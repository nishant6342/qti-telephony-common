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

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneIdForECall(Landroid/content/Context;)I
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    move-object/from16 v0, p0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    .line 56
    .local v1, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 57
    .local v2, "voicePhoneId":I
    const/4 v3, -0x1

    .line 59
    .local v3, "phoneId":I
    nop

    .line 60
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 61
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 63
    .local v5, "phoneCount":I
    invoke-static/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-string v9, "QtiEmergencyCallHelper"

    if-nez v6, :cond_6

    .line 68
    invoke-static {}, Landroid/telephony/TelephonyManager;->isConcurrentCallsPossible()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 69
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v6

    array-length v10, v6

    move v11, v7

    :goto_0
    if-ge v11, v10, :cond_3

    aget-object v12, v6, v11

    .line 70
    .local v12, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v13, v14, :cond_2

    .line 71
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    .line 72
    .local v13, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-nez v13, :cond_0

    .line 73
    const-string v14, "ImsPhone should not be null"

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_1

    .line 77
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    return v6

    .line 79
    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_2

    if-ne v3, v8, :cond_2

    .line 81
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 69
    .end local v12    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v13    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 85
    :cond_3
    if-eq v3, v8, :cond_4

    .line 86
    return v3

    .line 92
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v6

    array-length v10, v6

    move v11, v7

    :goto_2
    if-ge v11, v10, :cond_6

    aget-object v12, v6, v11

    .line 93
    .restart local v12    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v13, v14, :cond_5

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call already active on phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    return v6

    .line 92
    .end local v12    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 106
    :cond_6
    nop

    .line 107
    const-string v6, "carrier_config"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CarrierConfigManager;

    .line 108
    .local v6, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v10, 0x5

    if-eqz v6, :cond_a

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isPrivateNetworkSimInserted(Landroid/telephony/CarrierConfigManager;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 109
    const/4 v12, -0x1

    .line 110
    .local v12, "privateId":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v13

    array-length v14, v13

    :goto_3
    if-ge v7, v14, :cond_9

    aget-object v15, v13, v7

    .line 111
    .local v15, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    .line 112
    .local v8, "phId":I
    invoke-static {v6, v15}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isPrivateNetwork(Landroid/telephony/CarrierConfigManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 114
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v11

    .line 116
    .local v11, "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    invoke-virtual {v4, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    if-ne v0, v10, :cond_8

    .line 118
    invoke-virtual {v11, v8}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_8

    .line 120
    const-string v0, "public network sim is ready/PROVISIONED"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v8

    .line 123
    .end local v11    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    :cond_7
    const/4 v0, -0x1

    if-ne v12, v0, :cond_8

    .line 124
    move v0, v8

    move v12, v0

    .end local v12    # "privateId":I
    .local v0, "privateId":I
    goto :goto_4

    .line 123
    .end local v0    # "privateId":I
    .restart local v12    # "privateId":I
    :cond_8
    nop

    .line 110
    .end local v8    # "phId":I
    .end local v15    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v8, -0x1

    const/4 v10, 0x5

    move-object/from16 v0, p0

    goto :goto_3

    .line 128
    :cond_9
    const/4 v0, -0x1

    if-eq v12, v0, :cond_a

    .line 129
    return v12

    .line 133
    .end local v12    # "privateId":I
    :cond_a
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 134
    .local v0, "ddsPhoneId":I
    const/4 v7, 0x0

    .line 135
    .local v7, "hasUserSetDefaultVoiceSub":Z
    const/4 v8, 0x0

    .line 136
    .local v8, "hasUserSetDefaultDataSub":Z
    const/4 v10, 0x0

    .local v10, "phId":I
    :goto_5
    const-string v11, "In Sms Callback Mode on phoneId: "

    if-ge v10, v5, :cond_e

    .line 137
    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 138
    .local v12, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 139
    .local v13, "ss":I
    if-nez v13, :cond_d

    .line 142
    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isInScbm(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 143
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v10

    .line 146
    :cond_b
    move v3, v10

    .line 149
    const/4 v11, -0x1

    if-eq v2, v11, :cond_c

    .line 150
    if-ne v3, v2, :cond_d

    const/4 v7, 0x1

    goto :goto_6

    .line 152
    :cond_c
    if-ne v3, v0, :cond_d

    const/4 v8, 0x1

    .line 136
    .end local v12    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v13    # "ss":I
    :cond_d
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 158
    .end local v10    # "phId":I
    :cond_e
    if-eqz v7, :cond_f

    .line 159
    move v3, v2

    goto :goto_7

    .line 160
    :cond_f
    if-eqz v8, :cond_10

    .line 161
    move v3, v0

    .line 163
    :cond_10
    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Voice phoneId in service = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v10, -0x1

    if-ne v3, v10, :cond_15

    .line 166
    const/4 v10, 0x0

    .restart local v10    # "phId":I
    :goto_8
    if-ge v10, v5, :cond_13

    .line 167
    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    .line 168
    .local v13, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    .line 169
    .local v14, "ss":I
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 172
    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isInScbm(I)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 173
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v10

    .line 176
    :cond_11
    move v3, v10

    .line 177
    if-ne v3, v2, :cond_12

    const/4 v7, 0x1

    .line 166
    .end local v13    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v14    # "ss":I
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 182
    .end local v10    # "phId":I
    :cond_13
    if-eqz v7, :cond_14

    .line 183
    move v3, v2

    .line 185
    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Voice phoneId in Limited service = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_15
    const/4 v10, -0x1

    if-ne v3, v10, :cond_1a

    .line 189
    invoke-static/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId(Landroid/content/Context;)I

    move-result v3

    .line 190
    const/4 v10, 0x0

    .restart local v10    # "phId":I
    :goto_9
    if-ge v10, v5, :cond_19

    .line 191
    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    .line 193
    .restart local v13    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v14

    .line 195
    .local v14, "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    invoke-virtual {v4, v10}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v15

    move/from16 v16, v0

    const/4 v0, 0x5

    .end local v0    # "ddsPhoneId":I
    .local v16, "ddsPhoneId":I
    if-ne v15, v0, :cond_17

    .line 197
    invoke-virtual {v14, v10}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v15

    const/4 v0, 0x1

    if-ne v15, v0, :cond_18

    .line 201
    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isInScbm(I)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v10

    .line 205
    :cond_16
    move v3, v10

    .line 206
    if-ne v3, v2, :cond_18

    const/4 v7, 0x1

    goto :goto_a

    .line 195
    :cond_17
    const/4 v0, 0x1

    .line 190
    .end local v13    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v14    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    :cond_18
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    goto :goto_9

    .end local v16    # "ddsPhoneId":I
    .restart local v0    # "ddsPhoneId":I
    :cond_19
    move/from16 v16, v0

    .line 211
    .end local v0    # "ddsPhoneId":I
    .end local v10    # "phId":I
    .restart local v16    # "ddsPhoneId":I
    if-eqz v7, :cond_1b

    .line 212
    move v3, v2

    goto :goto_b

    .line 188
    .end local v16    # "ddsPhoneId":I
    .restart local v0    # "ddsPhoneId":I
    :cond_1a
    move/from16 v16, v0

    .line 215
    .end local v0    # "ddsPhoneId":I
    .restart local v16    # "ddsPhoneId":I
    :cond_1b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " preferred phoneId = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " hasUserSetDefaultVoiceSub = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " hasUserSetDefaultDataSub = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return v3
.end method

.method public static getPrimaryStackPhoneId(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "modemUuId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 231
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, -0x1

    .line 232
    .local v2, "primayStackPhoneId":I
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 233
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 235
    .local v3, "phoneCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-string v5, "QtiEmergencyCallHelper"

    if-ge v4, v3, :cond_3

    .line 237
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 238
    if-nez v1, :cond_0

    goto :goto_1

    .line 240
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

    .line 241
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 244
    goto :goto_1

    .line 249
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 250
    move v2, v4

    .line 251
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

    .line 252
    goto :goto_2

    .line 235
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    .end local v4    # "i":I
    :cond_3
    :goto_2
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 258
    const-string v4, "Returning default phone id"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v2, 0x0

    .line 262
    :cond_4
    return v2
.end method

.method public static isDeviceInSingleStandby(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 266
    const-string v0, "persist.vendor.radio.enhance_ecall"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "QtiEmergencyCallHelper"

    if-nez v0, :cond_0

    .line 267
    const-string v0, "persist.vendor.radio.enhance_ecall not enabled"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return v2

    .line 271
    :cond_0
    nop

    .line 272
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 273
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 277
    .local v4, "phoneCnt":I
    if-ne v4, v1, :cond_1

    .line 278
    return v1

    .line 280
    :cond_1
    const/4 v5, 0x0

    .local v5, "phoneId":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 282
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v6

    .line 284
    .local v6, "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 285
    invoke-virtual {v6, v5}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v7

    if-eq v7, v1, :cond_2

    goto :goto_1

    .line 280
    .end local v6    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 287
    .restart local v6    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    :cond_3
    :goto_1
    const-string v2, "modem is in single standby mode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v1

    .line 292
    .end local v5    # "phoneId":I
    .end local v6    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    :cond_4
    const-string v1, "modem is in dual standby mode"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v2
.end method

.method private static isInScbm(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 225
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

    .line 309
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 310
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

    .line 298
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 299
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isPrivateNetwork(Landroid/telephony/CarrierConfigManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    const-string v0, "QtiEmergencyCallHelper"

    const-string v1, "Private network sim is inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x1

    return v0

    .line 298
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    :cond_1
    return v2
.end method
