.class public final synthetic Lcom/android/launcher3/model/R0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/QuickstepModelDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/R0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/R0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    check-cast p1, Landroid/app/prediction/AppTargetEvent;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->onAppTargetEvent(Landroid/app/prediction/AppTargetEvent;I)V

    return-void
.end method
