.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;
.super Lcom/android/internal/telephony/data/DataProfileManager;
.source "QtiDataProfileManager.java"


# static fields
.field private static final APN_NAME:I = 0x3

.field private static final APN_TYPE:I = 0x1

.field private static final DEVICE_CAPABILITY:I = 0x2

.field private static final GID:I = 0x0

.field private static final KEY_MULTI_APN_ARRAY_FOR_SAME_GID_ENTRY_LENGTH:I = 0x4


# instance fields
.field private mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

.field private mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dataNetworkController"    # Lcom/android/internal/telephony/data/DataNetworkController;
    .param p3, "dataServiceManager"    # Lcom/android/internal/telephony/data/DataServiceManager;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "callback"    # Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;

    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataProfileManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    .line 65
    const-string v0, "QtiDataProfileManager: constructor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 67
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    .line 68
    return-void
.end method

.method private getApnBasedOnRadioCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "deviceCapability"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 135
    const-string v1, "getApnBasedOnRadioCapability: deviceCapability is null"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->loge(Ljava/lang/String;)V

    .line 136
    return-object v0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->getApnsWithSameGID()[Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "apnConfig":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 140
    .local v5, "apnEntry":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    if-eqz p3, :cond_1

    .line 143
    aget-object v7, v6, v3

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    aget-object v7, v6, v7

    .line 144
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 145
    const/4 v0, 0x3

    aget-object v0, v6, v0

    return-object v0

    .line 139
    .end local v5    # "apnEntry":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    :cond_2
    return-object v0
.end method

.method private isApnFilteringRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->getApnsWithSameGID()[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "apnConfig":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 112
    .local v4, "apnEntry":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 114
    aget-object v6, v5, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    return v6

    .line 111
    .end local v4    # "apnEntry":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_1
    return v2
.end method


# virtual methods
.method protected filterApnSettingsWithRadioCapability(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "allApnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->isApnFilteringWithRadioCapabilityRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterApnSettingsWithRadioCapability start: allApnSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 81
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/ApnSetting;

    .line 82
    .local v1, "apn":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "apnType":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->hasMvnoParams()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 84
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->isApnFilteringRequired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 86
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getEnhancedRadioCapabilityResponse()Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    move-result-object v4

    .line 87
    invoke-virtual {v4}, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;->getEnhancedRadioCapability()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-direct {p0, v3, v2, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->getApnBasedOnRadioCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "apnName":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterApnSettingsWithRadioCapability: removed not supported apn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 94
    .end local v3    # "apnName":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 95
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 97
    .end local v1    # "apn":Landroid/telephony/data/ApnSetting;
    .end local v2    # "apnType":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 98
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterApnSettingsWithRadioCapability: end: allApnSettings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 99
    return-void
.end method
