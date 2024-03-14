.class public final synthetic Lcom/android/launcher3/util/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/util/VibratorWrapper;

.field public final synthetic e:I

.field public final synthetic f:F

.field public final synthetic g:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/VibratorWrapper;IFLandroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/J;->d:Lcom/android/launcher3/util/VibratorWrapper;

    iput p2, p0, Lcom/android/launcher3/util/J;->e:I

    iput p3, p0, Lcom/android/launcher3/util/J;->f:F

    iput-object p4, p0, Lcom/android/launcher3/util/J;->g:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/util/J;->d:Lcom/android/launcher3/util/VibratorWrapper;

    iget v1, p0, Lcom/android/launcher3/util/J;->e:I

    iget v2, p0, Lcom/android/launcher3/util/J;->f:F

    iget-object p0, p0, Lcom/android/launcher3/util/J;->g:Landroid/os/VibrationEffect;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/util/VibratorWrapper;->a(Lcom/android/launcher3/util/VibratorWrapper;IFLandroid/os/VibrationEffect;)V

    return-void
.end method
