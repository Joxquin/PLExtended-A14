.class public final synthetic Li1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/d;->d:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Li1/d;->d:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->clearSearchResult()V

    return-void
.end method
