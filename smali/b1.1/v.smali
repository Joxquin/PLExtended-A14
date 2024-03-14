.class public final synthetic Lb1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb1/v;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, Lb1/v;->d:I

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->g(I)V

    return-void
.end method
