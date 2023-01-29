.class public Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;
.super Landroid/os/Handler;
.source "QtiUiccEfHelper.java"


# static fields
.field protected static final ACTION_READ_EF_BROADCAST:Ljava/lang/String; = "com.qualcomm.qti.intent.action.ACTION_READ_EF_RESULT"

.field protected static final ACTION_WRITE_EF_BROADCAST:Ljava/lang/String; = "com.qualcomm.qti.intent.action.ACTION_WRITE_EF_RESULT"

.field private static final LOG_TAG:Ljava/lang/String; = "QtiUiccEfHelper"

.field private static final MESSAGE_GET_EF_DONE:I = 0x1

.field private static final MESSAGE_SET_EF_DONE:I = 0x2

.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiUiccEfHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 45
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "slot"

    const/4 v4, 0x1

    const-string v5, "exception"

    packed-switch v2, :pswitch_data_0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageHandler: unexpected message code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 58
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.qualcomm.qti.intent.action.ACTION_WRITE_EF_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "setEfIntent":Landroid/content/Intent;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    goto :goto_1

    .line 47
    .end local v1    # "setEfIntent":Landroid/content/Intent;
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.qualcomm.qti.intent.action.ACTION_READ_EF_RESULT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, "getEfIntent":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ef content = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    const-string v4, "payload"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 54
    :goto_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    nop

    .line 69
    .end local v2    # "getEfIntent":Landroid/content/Intent;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "family"    # I

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 73
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 74
    .local v1, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QtiUiccEfHelper"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, "iccFileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 78
    .local v4, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newUiccApplication = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fh = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v4    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    return-object v2
.end method

.method public readUiccEf(III)Z
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "efId"    # I

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;->loadIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 89
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 91
    return v2

    .line 93
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public writeUiccEf(III[B)Z
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "efId"    # I
    .param p4, "efData"    # [B

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;->loadIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 100
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 102
    invoke-virtual {p0, v1, p1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 101
    invoke-virtual {v0, p3, p4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 103
    const/4 v1, 0x1

    return v1

    .line 105
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
