.class public Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Landroid/content/Context;Lcom/android/launcher3/K;)Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 0

    new-instance p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    return-object p0
.end method
