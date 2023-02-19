.class public Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;
.super Lcom/android/internal/telephony/GsmCdmaPhone;
.source "VendorGsmCdmaPhone.java"


# static fields
.field protected static final blacklist EVENT_SUBINFO_RECORD_ADDED:I = 0xa5


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    const-string p1, "VendorGsmCdmaPhone"

    const-string p2, "Constructor"

    .line 46
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->getInstance()Lcom/android/internal/telephony/vendor/VendorSubscriptionController;

    move-result-object p1

    const/16 p2, 0xa5

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->registerForAddSubscriptionRecord(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorGsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa5

    if-eq v0, v1, :cond_0

    .line 81
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_2

    .line 65
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 66
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 70
    sget p1, Lcom/android/internal/telephony/GsmCdmaPhone;->ENABLE_UICC_APPS_MAX_RETRIES:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->reapplyUiccAppsEnablementIfNeeded(I)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 77
    invoke-static {}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->getInstance()Lcom/android/internal/telephony/vendor/VendorSubscriptionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->notifyRadioCapabilityAvailable()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected blacklist phoneObjectUpdater(I)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    return-void
.end method
