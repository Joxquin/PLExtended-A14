.class public interface abstract Lcom/android/wm/shell/pip/IPip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract abortSwipePipToHome(ILandroid/content/ComponentName;)V
.end method

.method public abstract setLauncherAppIconSize(I)V
.end method

.method public abstract setLauncherKeepClearAreaHeight(ZI)V
.end method

.method public abstract setPipAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
.end method

.method public abstract setPipAnimationTypeToAlpha()V
.end method

.method public abstract setShelfHeight(ZI)V
.end method

.method public abstract startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public abstract stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
.end method
