.class Lcom/qualcomm/qti/internal/telephony/ScbmHandler$2;
.super Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;
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

    .line 278
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$2;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onScbmExited(Z)V
    .locals 3
    .param p1, "status"    # Z

    .line 282
    if-nez p1, :cond_0

    .line 283
    const-string v0, "ScbmHandler"

    const-string v1, "Exit scbm failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$2;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$mgetScbmPhoneId(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$msetIsInScbm(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;IZ)V

    .line 287
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$2;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$mhandleExitScbm(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)V

    .line 288
    return-void
.end method
