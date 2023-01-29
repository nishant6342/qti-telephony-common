.class Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;
.super Ljava/lang/Object;
.source "ScbmHandler.java"

# interfaces
.implements Lorg/codeaurora/ims/QtiImsExtConnector$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->createQtiImsExtConnector(Landroid/content/Context;)V
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

    .line 294
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionAvailable(Lorg/codeaurora/ims/QtiImsExtManager;)V
    .locals 5
    .param p1, "qtiImsExtManager"    # Lorg/codeaurora/ims/QtiImsExtManager;

    .line 297
    const-string v0, "ScbmHandler"

    const-string v1, "onConnectionAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fputmQtiImsExtManager(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;Lorg/codeaurora/ims/QtiImsExtManager;)V

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fgetmIsExitScbmFeatureRetrieved(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fgetmQtiImsExtManager(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 304
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fgetmQtiImsExtManager(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v2

    .line 306
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 305
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/QtiImsExtManager;->isExitScbmFeatureSupported(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fputmIsExitScbmFeatureSupported(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;Z)V

    .line 307
    const-string v1, "ScbmHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExitScbmFeatureSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fgetmIsExitScbmFeatureSupported(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fputmIsExitScbmFeatureRetrieved(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;Z)V
    :try_end_1
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Lorg/codeaurora/ims/QtiImsException;
    :try_start_2
    const-string v2, "ScbmHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExitScbmFeatureSupported exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "e":Lorg/codeaurora/ims/QtiImsException;
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isInScbm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->exitScbm()V

    .line 323
    :cond_1
    return-void

    .line 315
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onConnectionUnavailable()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fputmQtiImsExtManager(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;Lorg/codeaurora/ims/QtiImsExtManager;)V

    .line 328
    return-void
.end method
