.class public Lcom/android/quickstep/util/VibrationConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EFFECT_TEXTURE_TICK:Landroid/os/VibrationEffect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/VibrationConstants;->EFFECT_TEXTURE_TICK:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
