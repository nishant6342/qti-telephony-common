.class Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "ScbmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ScbmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    .line 131
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.codeaurora.intent.action.SMS_CALLBACK_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    const-string v2, "ScbmHandler"

    if-nez v1, :cond_0

    .line 138
    const-string v1, "Invalid phoneID"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_0
    const-string v1, "sms_callback_mode"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 142
    .local v1, "scbmStatus":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SMS_CALLBACK_MODE intent received scbmStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 145
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 146
    .local v4, "subId":I
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v5, v4}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$misCarrierConfigEnabledScbm(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;I)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SCBM feature not enabled for phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sbId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isInScbm()Z

    move-result v2

    .line 152
    .local v2, "currentStatus":Z
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v5, v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$msetScbmPhoneId(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;I)V

    .line 153
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v5, v0, v1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$msetIsInScbm(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;IZ)V

    .line 154
    if-eq v2, v1, :cond_3

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isExitScbmFeatureSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    if-eqz v1, :cond_2

    .line 156
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$mhandleEnterScbm(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$mhandleExitScbm(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)V

    .line 162
    .end local v0    # "phoneId":I
    .end local v1    # "scbmStatus":Z
    .end local v2    # "currentStatus":Z
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "subId":I
    :cond_3
    :goto_0
    return-void
.end method
