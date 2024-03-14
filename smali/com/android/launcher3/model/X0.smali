.class public final synthetic Lcom/android/launcher3/model/X0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/QuickstepModelDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/X0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/X0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    invoke-static {p0, p2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->a(Lcom/android/launcher3/model/QuickstepModelDelegate;Ljava/util/List;)V

    const/4 p0, 0x0

    return p0
.end method
