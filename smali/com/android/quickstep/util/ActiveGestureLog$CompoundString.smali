.class public Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_OP:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;


# instance fields
.field private final mIsNoOp:Z

.field private final mSubstrings:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    invoke-direct {v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->NO_OP:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public append(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    iget-object p1, p1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    iget-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    iget-boolean v2, p1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    iget-object p1, p1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    if-eqz v0, :cond_0

    const-string p0, "ERROR: cannot use No-Op compound string"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
