.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# static fields
.field public static d:I

.field public static e:Ljava/lang/reflect/Field;

.field public static f:Ljava/lang/reflect/Field;

.field public static g:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/q;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    sget p0, Landroidx/activity/ImmLeaksCleaner;->d:I

    const/4 p1, 0x1

    if-nez p0, :cond_1

    const/4 p0, 0x2

    :try_start_0
    sput p0, Landroidx/activity/ImmLeaksCleaner;->d:I

    const-class p0, Landroid/view/inputmethod/InputMethodManager;

    const-string p2, "mServedView"

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Landroidx/activity/ImmLeaksCleaner;->f:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class p0, Landroid/view/inputmethod/InputMethodManager;

    const-string p2, "mNextServedView"

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Landroidx/activity/ImmLeaksCleaner;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class p0, Landroid/view/inputmethod/InputMethodManager;

    const-string p2, "mH"

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Landroidx/activity/ImmLeaksCleaner;->e:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sput p1, Landroidx/activity/ImmLeaksCleaner;->d:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    sget p0, Landroidx/activity/ImmLeaksCleaner;->d:I

    if-eq p0, p1, :cond_2

    return-void

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method
