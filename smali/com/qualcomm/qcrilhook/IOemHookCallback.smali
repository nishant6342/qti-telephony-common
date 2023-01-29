.class public interface abstract Lcom/qualcomm/qcrilhook/IOemHookCallback;
.super Ljava/lang/Object;
.source "IOemHookCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/IOemHookCallback$Stub;,
        Lcom/qualcomm/qcrilhook/IOemHookCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.qcrilhook.IOemHookCallback"


# virtual methods
.method public abstract onOemHookException(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onOemHookResponse([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
