.class Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;
.super Ljava/lang/Object;
.source "QtiGsmCdmaPhone.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .line 118
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    const-string v1, "ExtTelephonyService connected"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Landroid/content/Context;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmCallback(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v3

    .line 122
    invoke-virtual {v1, v2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->registerQtiRadioConfigCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fputmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Lcom/qti/extphone/Client;)V

    .line 124
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQtiRadioConfigClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Landroid/content/Context;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmCallback(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v3

    .line 125
    invoke-virtual {v1, v2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Lcom/qti/extphone/Client;)V

    .line 127
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/Client;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecureModeStatus Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mloge(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 133
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtTelephonyService disconnected. mQtiRadioConfigClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmCallback(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->unregisterQtiRadioConfigCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    .line 140
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fputmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Lcom/qti/extphone/Client;)V

    .line 141
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Lcom/qti/extphone/Client;)V

    .line 142
    return-void
.end method
