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

    .line 129
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    const-string v1, "ExtTelephonyService connected"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 133
    const/16 v0, 0x16

    const/16 v1, 0x11

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 136
    .local v0, "events":[I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Landroid/content/Context;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmExtPhoneCallbackListener(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtPhoneCallbackListener;

    move-result-object v4

    .line 136
    invoke-virtual {v2, v3, v4, v0}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/ExtPhoneCallbackListener;[I)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Lcom/qti/extphone/Client;)V

    .line 138
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/Client;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecureModeStatus Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mloge(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 145
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmQueryImeiInfoOnInit(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fputmQueryImeiInfoOnInit(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Z)V

    .line 147
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$minitializePrimaryImei(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtTelephonyService disconnected. mClient = "

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

    .line 155
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmExtPhoneCallbackListener(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtPhoneCallbackListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->unregisterCallback(Lcom/qti/extphone/ExtPhoneCallbackListener;)V

    .line 156
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Lcom/qti/extphone/Client;)V

    .line 157
    return-void
.end method
