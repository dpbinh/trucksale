package com.trucksale.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FileHelper {
	public static List<String> getAllFileInFolder(String path, String[] filter){
		List<String> fileStr = new ArrayList<String>();
		File parentf = new File(path);
		if(parentf.exists()){
			File[] files = parentf.listFiles(new FilenameFilter() {
				
				@Override
				public boolean accept(File dir, String name) {
					 for(String s : filter){
						 if(name.toLowerCase().endsWith(s)){
							 return true;
						 }
					 }
					 return false;
				}
			});
			for(File f : files){
				fileStr.add(f.getAbsolutePath());
			}
		}
		
		return fileStr;
	}
	
	public static List<String> removeRoot(String root, List<String> files){
		List<String> result = new ArrayList<>();
		for(String s : files){
			result.add(File.separator + s.replace(root, ""));
		}
		return result;
	}
	
	public static String uploadFileToFolder(String root, String subpath, String fileName, byte[] bytes) throws Exception{
		BufferedOutputStream stream = null;
		String result = "";
		try{
			String ext = fileName.substring(fileName.lastIndexOf('.'), fileName.length());
			String newName = (new Date().getTime()) + ext;
			String relativePath = subpath + File.separator + newName;
			String absolutePath = root  + relativePath;
			stream = new BufferedOutputStream(new FileOutputStream(new File(absolutePath)));
			stream.write(bytes);
			stream.flush();
			result = relativePath;
		}catch(Exception e){
			throw e;
		}finally{
			if(stream != null){
				stream.close();
			}
		}
		
		return result;
		
	}
	
	public static void deepDelete(Path dir) throws Exception {

		Files.walkFileTree(dir, new SimpleFileVisitor<Path>() {
			@Override
			public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
				Files.delete(file);
				return FileVisitResult.CONTINUE;
			}

			@Override
			public FileVisitResult postVisitDirectory(Path dir, IOException exc) throws IOException {
				if (exc == null) {
					Files.delete(dir);
					return FileVisitResult.CONTINUE;
				} else {
					throw exc;
				}
			}

		});

	}
	
	public static String getFileName(String value){
		return value.substring(value.lastIndexOf(File.separator) + 1, value.length());
	}
}
