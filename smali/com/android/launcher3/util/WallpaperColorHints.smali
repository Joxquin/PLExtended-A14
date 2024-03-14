.class public final Lcom/android/launcher3/util/WallpaperColorHints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field private final context:Landroid/content/Context;

.field private hints:I

.field private final onClose:Lcom/android/launcher3/util/SafeCloseable;

.field private final onColorHintsChangedListeners:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/util/WallpaperColorHints$Companion$INSTANCE$1;->INSTANCE:Lcom/android/launcher3/util/WallpaperColorHints$Companion$INSTANCE$1;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/WallpaperColorHints;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperColorHints;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onColorHintsChangedListeners:Ljava/util/List;

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast p1, Landroid/app/WallpaperManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/android/launcher3/util/WallpaperColorHints;->hints:I

    new-instance p1, Lcom/android/launcher3/util/WallpaperColorHints$onColorsChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/WallpaperColorHints$onColorsChangedListener$1;-><init>(Lcom/android/launcher3/util/WallpaperColorHints;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/util/WallpaperColorHints$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/util/WallpaperColorHints$1;-><init>(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/launcher3/util/WallpaperColorHints$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/WallpaperColorHints$2;-><init>(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onClose:Lcom/android/launcher3/util/SafeCloseable;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/launcher3/util/WallpaperColorHints$3;->INSTANCE:Lcom/android/launcher3/util/WallpaperColorHints$3;

    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onClose:Lcom/android/launcher3/util/SafeCloseable;

    :goto_1
    return-void
.end method

.method public static final access$getWallpaperManager(Lcom/android/launcher3/util/WallpaperColorHints;)Landroid/app/WallpaperManager;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->context:Landroid/content/Context;

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast p0, Landroid/app/WallpaperManager;

    return-object p0
.end method

.method public static final access$onColorsChanged(Lcom/android/launcher3/util/WallpaperColorHints;Landroid/app/WallpaperColors;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lcom/android/launcher3/util/WallpaperColorHints;->hints:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/android/launcher3/util/WallpaperColorHints;->hints:I

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onColorHintsChangedListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/OnColorHintListener;

    invoke-interface {p2, p1}, Lcom/android/launcher3/util/OnColorHintListener;->onColorHintsChanged(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static final get(Landroid/content/Context;)Lcom/android/launcher3/util/WallpaperColorHints;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/WallpaperColorHints;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "INSTANCE.get(context)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/util/WallpaperColorHints;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onClose:Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method public final getHints()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->hints:I

    return p0
.end method

.method public final registerOnColorHintsChangedListener(Lcom/android/launcher3/util/OnColorHintListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onColorHintsChangedListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterOnColorsChangedListener(Lcom/android/launcher3/util/OnColorHintListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperColorHints;->onColorHintsChangedListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
