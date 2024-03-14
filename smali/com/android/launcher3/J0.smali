.class public final synthetic Lcom/android/launcher3/J0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/J0;->a:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/J0;->a:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->getBackgroundColor()I

    move-result p0

    const/16 v0, 0xff

    invoke-static {p0, v0}, LE/a;->k(II)I

    move-result p0

    return p0
.end method
