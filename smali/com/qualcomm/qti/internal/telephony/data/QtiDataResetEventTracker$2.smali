.class Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "QtiDataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    .line 85
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    nop

    .line 91
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "phone"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 95
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SIM_STATE_CHANGED, action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$fgetmPhone(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 97
    const-string v3, "ABSENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    nop

    .line 98
    const-string v3, "NOT_READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    const-string v4, "SIM_STATE_ABSENT OR DISABLED"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mnotifyResetEvent(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;Z)V

    .line 103
    .end local v1    # "stateExtra":Ljava/lang/String;
    .end local v2    # "phoneId":I
    :cond_2
    return-void
.end method
