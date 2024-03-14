.class public final synthetic Lb1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field public final synthetic b:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

.field public final synthetic c:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/m;->a:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iput-object p2, p0, Lb1/m;->b:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iput-object p3, p0, Lb1/m;->c:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb1/m;->a:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iget-object v1, p0, Lb1/m;->b:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iget-object p0, p0, Lb1/m;->c:Lcom/android/quickstep/views/RecentsView;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->n(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;Ljava/util/List;)V

    return-void
.end method
