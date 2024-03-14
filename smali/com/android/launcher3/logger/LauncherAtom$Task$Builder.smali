.class public final Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
.super Lcom/google/protobuf/E;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->c()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/E;-><init>(Lcom/google/protobuf/J;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final setComponentName$1(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->a(Lcom/android/launcher3/logger/LauncherAtom$Task;Ljava/lang/String;)V

    return-void
.end method

.method public final setIndex$2(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/E;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/E;->instance:Lcom/google/protobuf/J;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->b(Lcom/android/launcher3/logger/LauncherAtom$Task;I)V

    return-void
.end method
