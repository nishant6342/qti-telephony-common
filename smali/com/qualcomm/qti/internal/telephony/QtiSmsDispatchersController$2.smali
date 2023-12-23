.class Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;
.super Ljava/lang/Object;
.source "QtiSmsDispatchersController.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    .line 108
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    const-string v1, "ExtTelephonyService connected"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Ljava/lang/String;)V

    .line 112
    const/16 v0, 0x16

    filled-new-array {v0}, [I

    move-result-object v0

    .line 114
    .local v0, "events":[I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmPackageName(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmExtPhoneCallbackListener(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/ExtPhoneCallbackListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/ExtPhoneCallbackListener;[I)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Lcom/qti/extphone/Client;)V

    .line 116
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/Client;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Ljava/lang/String;)V

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecureModeStatus, remote exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$mloge(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Ljava/lang/String;)V

    .line 124
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmSlotId(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->getCiwlanConfig(I)Lcom/qti/extphone/CiwlanConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fputmCiwlanConfig(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Lcom/qti/extphone/CiwlanConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    goto :goto_1

    .line 125
    :catch_1
    move-exception v1

    .line 126
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCiwlanConfig, remote exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$mloge(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Ljava/lang/String;)V

    .line 128
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtTelephonyService disconnected mClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fgetmExtPhoneCallbackListener(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/ExtPhoneCallbackListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->unregisterCallback(Lcom/qti/extphone/ExtPhoneCallbackListener;)V

    .line 134
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Lcom/qti/extphone/Client;)V

    .line 135
    return-void
.end method
