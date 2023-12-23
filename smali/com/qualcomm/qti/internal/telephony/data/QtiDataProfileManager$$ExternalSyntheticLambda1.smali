.class public final synthetic Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;


# direct methods
.method public synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$$ExternalSyntheticLambda1;->f$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$$ExternalSyntheticLambda1;->f$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->$r8$lambda$wFssCi4fMLNTmiirkITFGOzGml0(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;Landroid/telephony/data/DataProfile;)V

    return-void
.end method
