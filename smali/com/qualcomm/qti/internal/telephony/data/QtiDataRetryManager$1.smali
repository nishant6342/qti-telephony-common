.class Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$1;
.super Ljava/util/HashSet;
.source "QtiDataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    .line 78
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 79
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$1;->add(Ljava/lang/Object;)Z

    .line 80
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$1;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method
