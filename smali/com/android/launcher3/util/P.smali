.class public final synthetic Lcom/android/launcher3/util/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/P;->a:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/P;->a:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->b(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;)V

    return-void
.end method
