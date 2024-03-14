.class public Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;


# instance fields
.field public d:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;

.field public e:Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;

.field public f:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final clearSearchBarFocus()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;->d:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->clearFocus()V

    return-void
.end method

.method public final initialize(Lcom/android/launcher3/popup/PopupDataProvider;Lcom/android/launcher3/widget/picker/search/SearchModeListener;)V
    .locals 3

    new-instance v0, Le2/h;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le2/h;-><init>(Landroid/content/Context;Lcom/android/launcher3/popup/PopupDataProvider;)V

    new-instance p1, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;->e:Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;->f:Landroid/widget/ImageButton;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;-><init>(Le2/h;Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;Landroid/widget/ImageButton;Lcom/android/launcher3/widget/picker/search/SearchModeListener;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;->d:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;

    return-void
.end method

.method public final isSearchBarFocused()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;->e:Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result p0

    return p0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;->d:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->onDestroy()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a03ef

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;->e:Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;

    const v0, 0x7f0a03f0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;->f:Landroid/widget/ImageButton;

    return-void
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/widgetpicker/NexusWidgetsSearchBar;->d:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBarController;->clearSearchResult()V

    return-void
.end method
