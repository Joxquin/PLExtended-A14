.class public final Lcom/android/launcher3/config/FeatureFlags$IntFlag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCurrentValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/config/FeatureFlags$IntFlag;->mCurrentValue:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/config/FeatureFlags$IntFlag;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/config/FeatureFlags$IntFlag;->mCurrentValue:I

    return p0
.end method
