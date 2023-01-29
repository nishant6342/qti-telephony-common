.class Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;
.super Ljava/lang/Object;
.source "QtiIccSmsInterfaceManager.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    .line 63
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    const-string v1, "ExtTelephonyService connected"

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->logd(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fgetmPackageName(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fgetmCallback(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->registerQtiRadioConfigCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fputmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;Lcom/qti/extphone/Client;)V

    .line 69
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQtiRadioConfigClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fgetmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->logd(Ljava/lang/String;)V

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fgetmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/Client;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecureModeStatus, remote exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 75
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtTelephonyService disconnected mQtiRadioConfigClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fgetmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->logd(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fgetmCallback(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->unregisterQtiRadioConfigCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    .line 82
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fputmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;Lcom/qti/extphone/Client;)V

    .line 83
    return-void
.end method
