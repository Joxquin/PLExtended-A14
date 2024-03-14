.class public final Lcom/android/launcher3/anim/SpringProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/anim/SpringProperty;


# instance fields
.field public final flags:I

.field mDampingRatio:F

.field mStiffness:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/launcher3/anim/SpringProperty;->mDampingRatio:F

    const v0, 0x44bb8000    # 1500.0f

    iput v0, p0, Lcom/android/launcher3/anim/SpringProperty;->mStiffness:F

    iput p1, p0, Lcom/android/launcher3/anim/SpringProperty;->flags:I

    return-void
.end method


# virtual methods
.method public final setDampingRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/anim/SpringProperty;->mDampingRatio:F

    return-void
.end method

.method public final setStiffness(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/anim/SpringProperty;->mStiffness:F

    return-void
.end method
