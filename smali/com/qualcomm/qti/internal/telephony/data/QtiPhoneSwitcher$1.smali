.class Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;
.super Ljava/lang/Object;
.source "QtiPhoneSwitcher.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    .line 181
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    const-string v1, "ExtTelephony Service connected"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 186
    const/16 v0, 0x27

    const/16 v1, 0x29

    const/16 v2, 0xc

    const/16 v3, 0xd

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    .line 191
    .local v0, "events":[I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Landroid/content/Context;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    iget-object v4, v4, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    .line 191
    invoke-virtual {v2, v3, v4, v0}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/ExtPhoneCallbackListener;[I)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Lcom/qti/extphone/Client;)V

    .line 193
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Lcom/qti/extphone/Client;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/qti/extphone/ExtTelephonyManager;->isSmartDdsSwitchFeatureAvailable()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fputmIsSmartDdsSwitchFeatureAvailable(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Z)V

    .line 197
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmartDdsSwitchFeatureAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fgetmIsSmartDdsSwitchFeatureAvailable(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$200(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmartDdsSwitchFeatureAvailable exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$300(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 203
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fgetmIsSmartDdsSwitchFeatureAvailable(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->sendEmptyMessage(I)Z

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$msendDualDataUserPreference(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)V

    .line 207
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    const-string v1, "ExtTelephony Service disconnected..."

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$400(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->unregisterCallback(Lcom/qti/extphone/ExtPhoneCallbackListener;)V

    .line 212
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Lcom/qti/extphone/Client;)V

    .line 213
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 214
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 215
    return-void
.end method
