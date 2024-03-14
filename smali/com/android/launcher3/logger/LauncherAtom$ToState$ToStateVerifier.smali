.class final Lcom/android/launcher3/logger/LauncherAtom$ToState$ToStateVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/M;


# static fields
.field static final INSTANCE:Lcom/google/protobuf/M;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState$ToStateVerifier;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ToState$ToStateVerifier;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState$ToStateVerifier;->INSTANCE:Lcom/google/protobuf/M;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
