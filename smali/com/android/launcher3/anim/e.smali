.class public final synthetic Lcom/android/launcher3/anim/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/e;->a:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iput p2, p0, Lcom/android/launcher3/anim/e;->b:F

    iput p3, p0, Lcom/android/launcher3/anim/e;->c:F

    return-void
.end method


# virtual methods
.method public final getProgress(FF)F
    .locals 0

    iget p1, p0, Lcom/android/launcher3/anim/e;->c:F

    iget-object p2, p0, Lcom/android/launcher3/anim/e;->a:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget p0, p0, Lcom/android/launcher3/anim/e;->b:F

    invoke-static {p2, p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->b(Lcom/android/launcher3/anim/AnimatorPlaybackController;FF)F

    move-result p0

    return p0
.end method
