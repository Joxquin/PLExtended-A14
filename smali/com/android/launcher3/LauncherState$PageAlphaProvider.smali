.class public abstract Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPageAlpha(I)F
.end method

.method public abstract getPageTranslation(I)F
.end method
