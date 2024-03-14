.class public final synthetic Lcom/android/launcher3/anim/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;


# virtual methods
.method public final getProgress(FF)F
    .locals 0

    cmpl-float p0, p1, p2

    if-lez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float p0, p1, p2

    :goto_0
    return p0
.end method
