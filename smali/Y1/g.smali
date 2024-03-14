.class public final LY1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Z


# instance fields
.field public a:Z

.field public final b:Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

.field public final c:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final d:Ljava/lang/Runnable;

.field public final e:Ljava/lang/Runnable;

.field public final f:Ljava/lang/Runnable;

.field public g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "QuickLaunchV2"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, LY1/g;->h:Z

    return-void
.end method

.method public constructor <init>(LY1/t;LY1/t;LY1/t;Lcom/google/android/apps/nexuslauncher/allapps/y0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY1/g;->d:Ljava/lang/Runnable;

    iput-object p2, p0, LY1/g;->e:Ljava/lang/Runnable;

    iput-object p3, p0, LY1/g;->f:Ljava/lang/Runnable;

    iput-object p4, p0, LY1/g;->c:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    new-instance p1, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    invoke-direct {p1}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;-><init>()V

    iput-object p1, p0, LY1/g;->b:Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    return-void
.end method

.method public static a(Landroid/view/inputmethod/SurroundingText;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/inputmethod/SurroundingText;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, LY1/g;->a(Landroid/view/inputmethod/SurroundingText;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-interface {v1, v2, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 1

    iget-object v0, p0, LY1/g;->c:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LY1/g;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LY1/g;->a:Z

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/Z;->notifyItemChanged(I)V

    :cond_1
    iget-object p0, p0, LY1/g;->f:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final d(Landroid/view/inputmethod/SurroundingText;Landroid/view/inputmethod/SurroundingText;Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    sget-boolean v3, LY1/g;->h:Z

    const-string v4, "QuickLaunchV2"

    if-eqz p1, :cond_1b

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "before="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, LY1/g;->b(Landroid/view/inputmethod/SurroundingText;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "after="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, LY1/g;->b(Landroid/view/inputmethod/SurroundingText;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "===== no change; return"

    if-eqz v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v7

    if-ne v5, v7, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v7

    if-ne v5, v7, :cond_3

    if-eqz v3, :cond_2

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v5, v0, LY1/g;->c:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v7

    iget-object v8, v0, LY1/g;->b:Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-boolean v9, v0, LY1/g;->a:Z

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, v4, v1, v9}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v8, v4, v3}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v10, v0, LY1/g;->a:Z

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v5, v5, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v5, v5, Lcom/google/android/apps/nexuslauncher/allapps/s1;->m:Z

    if-nez v5, :cond_7

    return-void

    :cond_7
    invoke-static/range {p1 .. p1}, LY1/g;->a(Landroid/view/inputmethod/SurroundingText;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v11

    invoke-interface {v7, v9, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static/range {p2 .. p2}, LY1/g;->a(Landroid/view/inputmethod/SurroundingText;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v13

    invoke-interface {v12, v9, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, LY1/g;->g:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    if-eqz v3, :cond_8

    const-string v1, "===== auto append; return"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-boolean v9, v0, LY1/g;->a:Z

    goto/16 :goto_2

    :cond_9
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    iget-object v15, v0, LY1/g;->e:Ljava/lang/Runnable;

    iget-object v10, v0, LY1/g;->d:Ljava/lang/Runnable;

    if-ge v11, v14, :cond_f

    if-eqz v1, :cond_b

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v3, :cond_a

    const-string v1, "===== input new diff chars; clear hint; doSearch"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_b
    if-eqz v1, :cond_d

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v3, :cond_c

    const-string v3, "===== input new same chars; apply TextView selection; doSearch"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v9}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_d
    if-eqz v3, :cond_e

    const-string v1, "===== input new chars; doSearch"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    :goto_1
    iput-boolean v9, v0, LY1/g;->a:Z

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_2

    :cond_f
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_11

    if-eqz v3, :cond_10

    const-string v1, "===== delete chars; clear hint; remove highlight; doSearch"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x1

    iput-boolean v1, v0, LY1/g;->a:Z

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_2

    :cond_11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v3, :cond_12

    const-string v1, "===== delete selected text; clear hint; remove highlight; return"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, LY1/g;->c(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_13
    if-eqz v3, :cond_14

    const-string v1, "===== delete partial selected; clear hint; doSearch"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    iput-boolean v9, v0, LY1/g;->a:Z

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_15
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v3, :cond_16

    const-string v1, "===== non-English input; doSearch"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iput-boolean v9, v0, LY1/g;->a:Z

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_17
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v3, :cond_18

    const-string v1, "===== non-English delete; doSearch"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x1

    iput-boolean v1, v0, LY1/g;->a:Z

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_19
    if-eqz v3, :cond_1a

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_2
    return-void

    :cond_1b
    :goto_3
    if-eqz v3, :cond_1c

    const-string v0, "cacheSrdText or newSrdText is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method
