.class Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;
.super Ljava/lang/Object;
.source "QtiPhoneSwitcher.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .line 89
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-string v1, "ExtTelephony Service connected"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$000(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    invoke-virtual {v1, v2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Lcom/qti/extphone/Client;)V

    .line 95
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$200(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-string v1, "ExtTelephony Service disconnected..."

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$300(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->unRegisterCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    .line 101
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Lcom/qti/extphone/Client;)V

    .line 102
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 104
    return-void
.end method
