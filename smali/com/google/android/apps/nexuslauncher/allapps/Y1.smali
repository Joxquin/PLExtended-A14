.class public final Lcom/google/android/apps/nexuslauncher/allapps/Y1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/Animatable2;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Animatable2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/Y1;->a:Landroid/graphics/drawable/Animatable2;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Y1;->a:Landroid/graphics/drawable/Animatable2;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->start()V

    return-void
.end method
