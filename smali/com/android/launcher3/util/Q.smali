.class public final synthetic Lcom/android/launcher3/util/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/Q;->d:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/Q;->d:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-static {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->a(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;)V

    return-void
.end method
