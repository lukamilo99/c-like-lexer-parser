package raf.pp;

import java.util.Hashtable;

public class KWTable {
    private Hashtable mTable;
    public KWTable()
    {
        mTable = new Hashtable();
        mTable.put("main", Integer.valueOf(sym.MAIN));
        mTable.put("int", Integer.valueOf(sym.INT));
        mTable.put("real", Integer.valueOf(sym.REAL));
        mTable.put("char", Integer.valueOf(sym.CHAR));
        mTable.put("bool", Integer.valueOf(sym.BOOL));
        mTable.put("struct", Integer.valueOf(sym.STRUCT));
        mTable.put("read", Integer.valueOf(sym.READ));
        mTable.put("write", Integer.valueOf(sym.WRITE));
        mTable.put("if", Integer.valueOf(sym.IF));
        mTable.put("then", Integer.valueOf(sym.THEN));
        mTable.put("while", Integer.valueOf(sym.WHILE));
        mTable.put("for", Integer.valueOf(sym.FOR));
        mTable.put("do", Integer.valueOf(sym.DO));
        mTable.put("true", Integer.valueOf(sym.CONST));
        mTable.put("false", Integer.valueOf(sym.CONST));
    }

    public int find(String keyword)
    {
        Object symbol = mTable.get(keyword);
        if (symbol != null)
            return ((Integer)symbol).intValue();

        return sym.ID;
    }
}
