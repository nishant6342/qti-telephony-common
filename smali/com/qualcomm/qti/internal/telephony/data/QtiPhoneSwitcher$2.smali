.class Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$2;
.super Landroid/database/ContentObserver;
.source "QtiPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->registerForDualDataPreferenceChange(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 550
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 553
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$sfgetDUAL_DATA_USER_PREFERENCE()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Landroid/content/Context;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_data_preference"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 556
    .local v0, "userSelection":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dual Data Preference UI changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$1500(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 557
    if-nez v0, :cond_1

    .line 558
    new-instance v1, Lcom/qti/extphone/DualDataRecommendation;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/qti/extphone/DualDataRecommendation;-><init>(II)V

    .line 561
    .local v1, "rec":Lcom/qti/extphone/DualDataRecommendation;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v2, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$mupdateAndNotify(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Lcom/qti/extphone/DualDataRecommendation;)V

    .line 564
    .end local v0    # "userSelection":Z
    .end local v1    # "rec":Lcom/qti/extphone/DualDataRecommendation;
    :cond_1
    return-void
.end method
