.class public final LK2/k;
.super Lcom/android/launcher3/icons/RoundDrawableWrapper;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/ContentResolver;

.field public final e:Landroid/net/Uri;

.field public f:Landroid/graphics/drawable/Drawable;

.field public final g:I

.field public final h:Ljava/lang/ref/WeakReference;

.field public final i:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(FILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/icons/RoundDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    iput-object p4, p0, LK2/k;->e:Landroid/net/Uri;

    iput p2, p0, LK2/k;->g:I

    iput-object p3, p0, LK2/k;->d:Landroid/content/ContentResolver;

    iput-object p5, p0, LK2/k;->h:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, LK2/k;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method
